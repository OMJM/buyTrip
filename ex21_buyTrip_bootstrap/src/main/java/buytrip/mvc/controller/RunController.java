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
	 * [travel page] �ֱ� ��ϵ� �������� �����ֱ�
	 */
	@RequestMapping("/run/recentAddTrips")
	public void recentAddTrips() {}
	
	/**
	 * [order page] �ֱ� �����ڰ� ����� ��ǰ �����ֱ� (���� : �ֽż�)
	 */
	@RequestMapping("/run/recentOrders")	
	public void recentOrders() {}
	
	/**
	 * [main page] �ֱ� �Ϸ�� �ֹ� �����ֱ�
	 */
	@RequestMapping("/run/recentCompletedOrders")
	public void recentCompletedOrders() {}
	
	/**
	 * [main page] �ŷ������� Top3���� �����ֱ�(��ϼ� ��� �ŷ��Ϸ��)
	 */
	@RequestMapping("/travel/travel")
	public ModelAndView highestDeal(){
		List<HighestDealDTO> list = runService.highestDeal();
		
		System.out.println("list : "+list);
		return new ModelAndView("travel/travel", "list", list);
	}
	
	/**
	 * ȸ�� �����Ű��
	 */
	@RequestMapping("/run/fire")
	public void fire(){}
	
}
