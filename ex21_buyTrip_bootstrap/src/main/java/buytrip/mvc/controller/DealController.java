package buytrip.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import buytrip.mvc.model.deal.service.DealService;

@Controller
@RequestMapping("/deal")
public class DealController {

	//@Autowired
	//private DealService dealService;
	
	/**
	 * 직구자에게 구매 제안하기 (직구자에게 알림, 자동 메세지 발송)
	 */
	@RequestMapping("/offerDeal")
	public void offerDeal() {}
	
	/**
	 * 메시지 list 보기
	 */
	@RequestMapping("/messages")	
	public void messages() {}
	
	/**
	 * 메시지 상세보기
	 */
	@RequestMapping("/messageDetail")
	public void messageDetail() {}
	
	/**
	 * 메시지 - 대화하기
	 */
	@RequestMapping("/sendMessage")
	public void sendMessage(){}
	
	/**
	 * 알림 list 보기
	 */
	@RequestMapping("/notifications")
	public void notifications() {}
	
	/**
	 * 알림 별 해당페이지 이동하기
	 */
	@RequestMapping("/{?}")
	public void readNotifications() {}
	
	
}
