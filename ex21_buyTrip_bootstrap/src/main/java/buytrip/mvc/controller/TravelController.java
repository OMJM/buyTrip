package buytrip.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/travel")
public class TravelController {

	//@Autowired
	//private TravelService travelService;
	
	
	/**
	 * addTrip ���� ���� �����Ͽ� �������� ���ã�� �߰��ϱ� (�˸����:�޼���,�������ǻ���ǰ)
	 */
	@RequestMapping("/addTrip")	
	public void signup() {}
	
	/**
	 * [mypage] ����� �������� �����ϱ�
	 */
	@RequestMapping("/deleteTrip")
	public void login(){}
	
	/**
	 * [mypage] ����� �������� �� ���Ѹ���� list ����
	 */
	@RequestMapping("/readCompletedTrip")
	public void logout() {}

	
}
