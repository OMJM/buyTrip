package buytrip.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.dto.HighestDealDTO;
import buytrip.mvc.model.run.service.RunService;

@Controller
public class RunController {

	@Autowired
	private RunService runService;
	
	/**
	 * [travel page] 최근 등록된 여행일정 보여주기
	 */
	@RequestMapping("/run/recentAddTrips")
	public void recentAddTrips() {}
	
	/**
	 * [order page] 최근 직구자가 등록한 상품 보여주기 (정렬 : 최신순)
	 */
	@RequestMapping("/run/recentOrders")	
	public void recentOrders() {}
	
	/**
	 * [main page] 최근 완료된 주문 보여주기
	 */
	@RequestMapping("/run/recentCompletedOrders")
	public void recentCompletedOrders() {}
	
	/**
	 * [main page] 거래성사율 Top3나라 보여주기(등록수 대비 거래완료수)
	 */
	@RequestMapping("/travel/travel")
	public ModelAndView highestDeal(){
		List<HighestDealDTO> list = runService.highestDeal();
		
		System.out.println("list : "+list);
		return new ModelAndView("travel/travel", "list", list);
	}
	
	/**
	 * 회원 강퇴시키기
	 */
	@RequestMapping("/run/fire")
	public void fire(){}
	
}
