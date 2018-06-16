package buytrip.mvc.controller;

import java.io.File;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	private String savePath = "${pageContext.request.contextPath}/img";
	/**
	 * 상품 등록하기 폼 띄우기
	 */
	@RequestMapping("/orderForm")
	public String insertOrderForm() {
      return "orderForm";
	}
	
	/**
	 * 상품 등록하기
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder(ProductDTO productDTO) throws Exception {
		//파일첨부여부를 확인해서 첨부되었을때 파일저장.
		
				MultipartFile file = productDTO.getFile();
				if(file.getSize()>0){
					String fileName = file.getOriginalFilename();
					long fileSize = file.getSize();
					productDTO.setFname(fileName);
					productDTO.setFsize((int)fileSize);
					
					file.transferTo(new File(savePath+"/"+fileName));
				}
				
				
				orderService.insertOrder(productDTO);
				
				
				return "redirect: order ";
			}
		

	
	/**
	 * [mypage] 등록한 상품 lsit 보기
	 */
	@RequestMapping("/readOrders")
	public String readOrder(Model model, Authentication auth) {
		
		UserDTO userDTO = (UserDTO)auth.getPrincipal();
		
		String memberId = userDTO.getMemberId();
		
		List<ProductDTO> list=orderService.readOrder(memberId);
		List<ProductDTO> list2=orderService.letedOrder(memberId);
		
		
	
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		
		return "mypage/mypageProductList";
	}
	
	/**
	 * [mypage] 등록한 상품 상세보기
	 */
	@RequestMapping("/readOrderDetail")
	@ResponseBody
	public ModelAndView readOrderDetail(String productCode){
		
			ProductDTO productDTO=orderService.readOrderDetail(productCode);
			
			
		return new ModelAndView("mypage/mypageDetail","productDTO",productDTO);
	}
	
	/**
	 * [mypage] 등록한 상품 수정하기 폼 띄우기
	 */
	@RequestMapping("/updateOrderForm")
	public ModelAndView updateOrderFom(String productCode) {
		ProductDTO productDTO = orderService.readOrderDetail(productCode);
		return new ModelAndView("mypage/updateOrder","productDTO",productDTO);
	}
	
	/**
	 * [mypage] 등록한 상품 수정하기
	 */
	@RequestMapping("/updateOrder")
	public ModelAndView updateOrder(ProductDTO productDTO) {
	
	
	ProductDTO proDTO=orderService.readOrderDetail(productDTO.getProductCode());
		
		return new ModelAndView("mypage/mypageDetail", "proDTO", proDTO);
	}
	
	/**
	 * [mypage] 등록한 상품 삭제하기
	 */
	@RequestMapping("/deleteOrder")
	
	public String  deleteOrder(Authentication auth, String productCode) {
		
		UserDTO userDTO = (UserDTO)auth.getPrincipal();
		String memberId = userDTO.getMemberId();
		orderService.deleteOrder(memberId, productCode);
		return "redirect:order";
	}
	
	/**
	 * [mypage] 등록한 상품 거래완료 처리하기
	 */
	@RequestMapping("/completeOrder")
	public void completeOrder() {
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
	public void  readUserOrder() {
	}
	
	
}
