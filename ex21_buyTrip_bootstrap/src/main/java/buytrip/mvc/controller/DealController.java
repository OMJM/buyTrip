package buytrip.mvc.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.dto.OfferDTO;
import buytrip.mvc.model.dto.OfferJoinProductDTO;
import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.deal.service.DealService;
import buytrip.mvc.model.dto.OfferDTO;

@Controller
@RequestMapping("/deal")
public class DealController {

	@Autowired
	private DealService dealService;
	
	/**
	 * 직구자에게 구매 제안하기 (직구자에게 알림, 자동 메세지 발송)
	 */

	@RequestMapping("/offerDeal")
	public String offerDeal(OfferDTO offer) {
		dealService.offerDeal(offer);
		return "mypage/myofferList";
	}
	
	/**
	 * 직구자에게 제안한 배달 신청 취소하기
	 */
	@RequestMapping("/deleteDeal")
	public String deleteDeal(String offerCode) {
		System.out.println(offerCode);
		dealService.deleteDeal(offerCode);
		return "mypage/myOfferList";
	}
	
	/**
	 * 마이페이지-내 배달 목록에서 배달 신청 목록 읽어오기
	 */
	@RequestMapping("/readDeals")
	public ModelAndView readDeals(Authentication authentication) {
		ModelAndView mv = new ModelAndView();
		
		UserDTO user = (UserDTO) authentication.getPrincipal();
		System.out.println(user.getMemberId());
		List<OfferJoinProductDTO> list = dealService.readDeals(user.getMemberId());
		mv.addObject("offerJoinProductList", list);
		mv.setViewName("mypage/myOfferList");
		System.out.println(list.size());
		
		return mv;
	}
	
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
	/*@RequestMapping("/{?}")
	public void readNotifications() {}*/
	
	
}
