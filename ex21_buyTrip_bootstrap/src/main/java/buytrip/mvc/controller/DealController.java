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
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */
	@RequestMapping("/offerDeal")
	public void offerDeal() {}
	
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
