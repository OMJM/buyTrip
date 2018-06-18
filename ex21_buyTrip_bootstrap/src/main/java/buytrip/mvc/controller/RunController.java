package buytrip.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String highestDeal(Model model){
		model.addAttribute("list", runService.highestDeal());
		model.addAttribute("recentList", runService.recentTop4());
		return "travel/travel";
	}
	
	/**
	 * ȸ�� �����Ű��
	 */
	@RequestMapping("/run/fire")
	public void fire(){}
	
}
