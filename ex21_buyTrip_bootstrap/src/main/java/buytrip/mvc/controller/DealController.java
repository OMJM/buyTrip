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
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */

	@RequestMapping("/offerDeal")
	public String offerDeal(OfferDTO offer) {
		dealService.offerDeal(offer);
		return "mypage/myofferList";
	}
	
	/**
	 * �����ڿ��� ������ ��� ��û ����ϱ�
	 */
	@RequestMapping("/deleteDeal")
	public String deleteDeal(String offerCode) {
		System.out.println(offerCode);
		dealService.deleteDeal(offerCode);
		return "mypage/myOfferList";
	}
	
	/**
	 * ����������-�� ��� ��Ͽ��� ��� ��û ��� �о����
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
	 * �޽��� list ����
	 */
	@RequestMapping("/messages")	
	public void messages() {}
	
	/**
	 * �޽��� �󼼺���
	 */
	@RequestMapping("/messageDetail")
	public void messageDetail() {}
	
	/**
	 * �޽��� - ��ȭ�ϱ�
	 */
	@RequestMapping("/sendMessage")
	public void sendMessage(){}
	
	/**
	 * �˸� list ����
	 */
	@RequestMapping("/notifications")
	public void notifications() {}
	
	/**
	 * �˸� �� �ش������� �̵��ϱ�
	 */
	/*@RequestMapping("/{?}")
	public void readNotifications() {}*/
	
	
}
