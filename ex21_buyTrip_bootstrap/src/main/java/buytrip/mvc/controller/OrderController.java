package buytrip.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/order")
public class OrderController {

	//@Autowired
	//private OrderService orderService;
	
	/**
	 * ��ǰ ����ϱ� �� ����
	 */
	@RequestMapping("/insertOrderForm")
	public void insertOrderForm() {}
	
	/**
	 * ��ǰ ����ϱ�
	 */
	@RequestMapping("/insertOrder")
	public void insertOrder() {}
	
	/**
	 * [mypage] ����� ��ǰ lsit ����
	 */
	@RequestMapping("/readOrders")
	public void readOrder() {}
	
	/**
	 * [mypage] ����� ��ǰ �󼼺���
	 */
	@RequestMapping("/readOrderDetail")
	public void readOrderDetail(){}
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ� �� ����
	 */
	@RequestMapping("/updateOrderFom")
	public void updateOrderFom() {}
	
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	@RequestMapping("/updateOrder")
	public void updateOrder() {}
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	@RequestMapping("/deleteOrder")
	public void deleteOrder() {}
	
	/**
	 * [mypage] ����� ��ǰ �ŷ��Ϸ� ó���ϱ�
	 */
	@RequestMapping("/completeOrder")
	public void completeOrder() {
	}
	
	/**
	 * [mypage] ����� ��ǰ �� �ŷ��Ϸ�/���Ѹ���� ��ǰ list ����
	 */
	@RequestMapping("/readCompletedOrder")
	public void readCompletedOrder() {
	}
	
	/**
	 * ������ �˻��� ���� �������� ��ϻ�ǰ list ����
	 */
	@RequestMapping("/searchTripOrders")
	public void searchTripOrders() {
	}
	
	/**
	 * �����ڰ� ����� ��ǰ �󼼺��� (1.��ǰ����, 2.����������, 3.�������� ��������)
	 */
	@RequestMapping("/readUserOrder")
	public void readUserOrder() {
	}
	
	
}
