package buytrip.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import buytrip.mvc.model.dto.TravelDTO;
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
	public String selectAll(Model model){
		model.addAttribute("travelList", travelService.selectAll());
		model.addAttribute("finishList", travelService.finishAll());
		return "mypage/myTravelList";
	}
	
	/**
	    * [mypage] ����� �������� �� ���Ѹ���� list ����
	    */
	   @RequestMapping("selectPast")
	   @ResponseBody
	   public List<TravelDTO> selectPast(){
	      return travelService.selectPast();
	   }
	
	/**
	 * [mypage] ����� ���������� ��ϵ� ��ǰ ������ֱ�.
	 */
	@RequestMapping("mytravelsearchProduct")
	public String mytravelsearchProduct(String arrNation,String deNation,Model model) {
		model.addAttribute("arrNation",arrNation);
		model.addAttribute("deNation",deNation);
		model.addAttribute("searchProductList", travelService.searchList(arrNation));
		return "mypage/myTravel";
	}
	
	/**
	 * travel-searchList������ ���ϴ� ���� ��ϵ� ��ǰ ������ֱ�
	 */
	@RequestMapping("searchProductList")
	public String searchProductList(String departNation,Model model) {
		model.addAttribute("departNation", departNation);
		model.addAttribute("searchProductList", travelService.searchList(departNation));
		return "travel/searchList";
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
   @RequestMapping(value="/insert",produces="application/json;charset=UTF-8")
   @ResponseBody
   public int insertTravel(TravelDTO travelDTO) {
      
      return travelService.insert(travelDTO);
   }
   
   /**
    * [mypage] ����� �������� �����ϱ�
    */
   @RequestMapping(value="delete",produces="application/json;charset=UTF-8")
   @ResponseBody
   public int deleteTravel(String travelNo){
      
      System.out.println("controller = "+travelNo);
      return travelService.delete(travelNo);
      
   }
   
   @RequestMapping("suggest")
   @ResponseBody
   public List<String> suggest(String keyWord) {
      
      List<String> list = travelService.suggest(keyWord);
      
      return list;
      
   }

   
}