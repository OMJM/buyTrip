package buytrip.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import buytrip.mvc.model.dto.TravelDTO;
import buytrip.mvc.model.travel.service.TravelService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private TravelService travelService;

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
	
	
	/**
	 * [mypage] ����� �������� �� ��ü list ����
	 */
	@RequestMapping("order")
	public void selectAll(Model model){
		
		List<TravelDTO> list = travelService.selectAll();
		model.addAttribute("currentList", list);
		
	}
	
	
}
