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
	 * [travel page] �ֱ� ��ϵ� �������� �����ֱ�
	 */
	@RequestMapping("/recentAddTrips")
	public void recentAddTrips() {}
	
	/**
	 * [order page] �ֱ� �����ڰ� ����� ��ǰ �����ֱ� (���� : �ֽż�)
	 */
	@RequestMapping("/recentOrders")	
	public void recentOrders() {}
	
	/**
	 * [main page] �ֱ� �Ϸ�� �ֹ� �����ֱ�
	 */
	@RequestMapping("/recentCompletedOrders")
	public void recentCompletedOrders() {}
	
	/**
	 * [main page] �ŷ������� Top3���� �����ֱ�(��ϼ� ��� �ŷ��Ϸ��)
	 */
	@RequestMapping("/highestDeal")
	public void highestDeal(){}
	
	/**
	 * ȸ�� �����Ű��
	 */
	@RequestMapping("/fire")
	public void fire(){}
	
}
