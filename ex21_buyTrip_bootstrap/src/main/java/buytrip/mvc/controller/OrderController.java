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
	 * 상품 등록하기 폼 띄우기
	 */
	@RequestMapping("/insertOrderForm")
	public void insertOrderForm() {}
	
	/**
	 * 상품 등록하기
	 */
	@RequestMapping("/insertOrder")
	public void insertOrder() {}
	
	/**
	 * [mypage] 등록한 상품 lsit 보기
	 */
	@RequestMapping("/readOrders")
	public void readOrder() {}
	
	/**
	 * [mypage] 등록한 상품 상세보기
	 */
	@RequestMapping("/readOrderDetail")
	public void readOrderDetail(){}
	
	/**
	 * [mypage] 등록한 상품 수정하기 폼 띄우기
	 */
	@RequestMapping("/updateOrderFom")
	public void updateOrderFom() {}
	
	
	/**
	 * [mypage] 등록한 상품 수정하기
	 */
	@RequestMapping("/updateOrder")
	public void updateOrder() {}
	
	/**
	 * [mypage] 등록한 상품 삭제하기
	 */
	@RequestMapping("/deleteOrder")
	public void deleteOrder() {}
	
	/**
	 * [mypage] 등록한 상품 거래완료 처리하기
	 */
	@RequestMapping("/completeOrder")
	public void completeOrder() {
	}
	
	/**
	 * [mypage] 등록한 상품 중 거래완료/기한만료된 상품 list 보기
	 */
	@RequestMapping("/readCompletedOrder")
	public void readCompletedOrder() {
	}
	
	/**
	 * 여행지 검색에 따른 직구자의 등록상품 list 보기
	 */
	@RequestMapping("/searchTripOrders")
	public void searchTripOrders() {
	}
	
	/**
	 * 직구자가 등록한 상품 상세보기 (1.상품정보, 2.직구자정보, 3.여행자의 제안정보)
	 */
	@RequestMapping("/readUserOrder")
	public void readUserOrder() {
	}
	
	
	/**
	 * [mypage] 등록한 여행일정 중 전체 list 보기
	 */
	@RequestMapping("order")
	public void selectAll(Model model){
		
		List<TravelDTO> list = travelService.selectAll();
		model.addAttribute("currentList", list);
		
	}
	
	
}
