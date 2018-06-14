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
	 * addTrip 폼에 정보 기입하여 여행일정 즐겨찾기 추가하기 (알림기능:메세지,여행지의새상품)
	 */
	@RequestMapping(value="/insert",produces="application/json;charset=UTF-8")
	@ResponseBody
	public int insertTravel(TravelDTO travelDTO) {
		
		return travelService.insert(travelDTO);
	}
	
	/**
	 * [mypage] 등록한 여행일정 삭제하기
	 */
	@RequestMapping(value="delete",produces="application/json;charset=UTF-8")
	@ResponseBody
	public int deleteTravel(String travelNo){
		
		System.out.println("controller = "+travelNo);
		return travelService.delete(travelNo);
		
	}
	
	
	/**
	 * [mypage] 등록한 여행일정 중 기한만료된 list 보기
	 */
	@RequestMapping("selectPast")
	@ResponseBody
	public List<TravelDTO> selectPast(){
		return travelService.selectPast();
	}
	
	@RequestMapping("suggest")
	@ResponseBody
	public List<String> suggest(String keyWord) {
		
		List<String> list = travelService.suggest(keyWord);
		
		return list;
		
	}

	
}
