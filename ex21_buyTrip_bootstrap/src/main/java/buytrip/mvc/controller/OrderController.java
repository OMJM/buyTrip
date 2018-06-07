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
	
	
}
