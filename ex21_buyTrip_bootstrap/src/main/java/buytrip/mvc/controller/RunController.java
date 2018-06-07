package buytrip.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import buytrip.mvc.model.deal.service.DealService;

@Controller
@RequestMapping("/run")
public class RunController {

	//@Autowired
	//private RunService runService;
	
	/**
	 * [travel page] 최근 등록된 여행일정 보여주기
	 */
	@RequestMapping("/recentAddTrips")
	public void recentAddTrips() {}
	
	/**
	 * [order page] 최근 직구자가 등록한 상품 보여주기 (정렬 : 최신순)
	 */
	@RequestMapping("/recentOrders")	
	public void recentOrders() {}
	
	/**
	 * [main page] 최근 완료된 주문 보여주기
	 */
	@RequestMapping("/recentCompletedOrders")
	public void recentCompletedOrders() {}
	
	/**
	 * [main page] 거래성사율 Top3나라 보여주기(등록수 대비 거래완료수)
	 */
	@RequestMapping("/highestDeal")
	public void highestDeal(){}
	
	/**
	 * 회원 강퇴시키기
	 */
	@RequestMapping("/fire")
	public void fire(){}
	
}
