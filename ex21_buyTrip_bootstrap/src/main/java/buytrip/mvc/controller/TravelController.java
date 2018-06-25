package buytrip.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import buytrip.mvc.model.dto.PagingVo;
import buytrip.mvc.model.dto.TravelDTO;
import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.travel.service.TravelService;

@Controller
@RequestMapping("travel")
public class TravelController {

	@Autowired
	private TravelService travelService;

	/**
	 * [mypage] ����� �������� �� ��ü list and �Ⱓ�� ���� list�� ����
	 */
	@RequestMapping("select")
	public String selectAll(Model model, Authentication auth, PagingVo paging) {
		UserDTO userDTO = (UserDTO) auth.getPrincipal();
		String memberId = userDTO.getMemberId();
		List<TravelDTO> travelList = travelService.selectAll(memberId, paging);
		paging.setTotal(travelService.selectTotalPaging(memberId));
		List<TravelDTO> finishList = travelService.finishAll(memberId);
		model.addAttribute("travelList", travelList);
		model.addAttribute("p", paging);
		model.addAttribute("finishList", finishList);
		return "mypage/myTravelList_my";
	}

	/**
	 * [mypage] ����� �������� �� ���Ѹ���� list ����
	 */
	@RequestMapping("selectPast")
	@ResponseBody
	public List<TravelDTO> selectPast() {
		return travelService.selectPast();
	}

	/**
	 * [mypage] ����� ���������� ��ϵ� ��ǰ ������ֱ�.
	 */
	@RequestMapping("mytravelsearchProduct")
	public String mytravelsearchProduct(String arrNation, String deNation, Model model,
			buytrip.mvc.model.dto.PagingVo paging) {
		paging.setTotal(travelService.SelectListCnt(arrNation));
		model.addAttribute("searchProductList", travelService.searchList(arrNation, paging));
		return "mypage/myTravel";
	}

	/**
	 * travel-searchList������ ���ϴ� ���� ��ϵ� ��ǰ ������ֱ�
	 */
	@RequestMapping("searchProductList")
	public String searchProductList(String departNation, Model model, buytrip.mvc.model.dto.PagingVo paging) {
		paging.setTotal(travelService.SelectListCnt(departNation));
		model.addAttribute("departNation", departNation);
		model.addAttribute("searchProductList", travelService.searchList(departNation, paging));
		model.addAttribute("p", paging);
		return "travel/searchList";
	}

	@RequestMapping("costList")
	public String costList(String departNation,Model model) {
		
		model.addAttribute("departNation", departNation);
		model.addAttribute("costList", travelService.costList(departNation));
	

		return "travel/costList";
	}
	
	/**
	 * ��ǰ����Ʈ���� detail�������� ����.
	 */
	@RequestMapping("detail")
	public String productDetail(String productCode) {
		return "order/detail";
	}

	/**
	 * addTrip ���� ���� �����Ͽ� �������� ���ã�� �߰��ϱ� (�˸����:�޼���,�������ǻ���ǰ)
	 */

	@RequestMapping("insert")
	public String insertTravel(TravelDTO travelDTO) {
		travelService.insert(travelDTO);
		return "forward:select";
	}

	/**
	 * [mypage] ����� �������� �����ϱ�
	 */
	@RequestMapping(value = "delete", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int deleteTravel(String travelNo) {
		System.out.println("controller = " + travelNo);
		return travelService.delete(travelNo);

	}

	@RequestMapping("suggest")
	@ResponseBody
	public List<String> suggest(String keyWord) {
		List<String> list = travelService.suggest(keyWord);
		return list;

	}

	/**
	 * order main ȭ�� ���
	 */
	@RequestMapping("/addTrip")
	public String addTrip() {
		return "travel/addTrip";
	}

}