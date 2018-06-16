package buytrip.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	/*
	@RequestMapping("/offerDeal")
	public String offerDeal(OfferDTO offer) {
		dealService.offerDeal(offer);
		return "";
	}
	*/
	@RequestMapping("/offerDeal")
	public String offerDeal(OfferDTO offer) {
		System.out.println(offer.getOfferCode());
		dealService.offerDeal(offer);
		return "";
	}
	
	/**
	 * �����ڿ��� ������ ��� ��û ����ϱ�
	 */
	@RequestMapping("/deleteDeal")
	public void deleteDeal() {}
	
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
	@RequestMapping("/{?}")
	public void readNotifications() {}
	
	
}
