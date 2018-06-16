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
	 * ��ǰ ����ϱ� �� ����
	 */
	@RequestMapping("/orderForm")
	public String insertOrderForm() {
      return "orderForm";
	}
	
	/**
	 * ��ǰ ����ϱ�
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder(ProductDTO productDTO) throws Exception {
		//����÷�ο��θ� Ȯ���ؼ� ÷�εǾ����� ��������.
		
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
	 * [mypage] ����� ��ǰ lsit ����
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
	 * [mypage] ����� ��ǰ �󼼺���
	 */
	@RequestMapping("/readOrderDetail")
	@ResponseBody
	public ModelAndView readOrderDetail(String productCode){
		
			ProductDTO productDTO=orderService.readOrderDetail(productCode);
			
			
		return new ModelAndView("mypage/mypageDetail","productDTO",productDTO);
	}
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ� �� ����
	 */
	@RequestMapping("/updateOrderForm")
	public ModelAndView updateOrderFom(String productCode) {
		ProductDTO productDTO = orderService.readOrderDetail(productCode);
		return new ModelAndView("mypage/updateOrder","productDTO",productDTO);
	}
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	@RequestMapping("/updateOrder")
	public ModelAndView updateOrder(ProductDTO productDTO) {
	
	
	ProductDTO proDTO=orderService.readOrderDetail(productDTO.getProductCode());
		
		return new ModelAndView("mypage/mypageDetail", "proDTO", proDTO);
	}
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	@RequestMapping("/deleteOrder")
	
	public String  deleteOrder(Authentication auth, String productCode) {
		
		UserDTO userDTO = (UserDTO)auth.getPrincipal();
		String memberId = userDTO.getMemberId();
		orderService.deleteOrder(memberId, productCode);
		return "redirect:order";
	}
	
	/**
	 * [mypage] ����� ��ǰ �ŷ��Ϸ� ó���ϱ�
	 */
	@RequestMapping("/completeOrder")
	public void completeOrder() {
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
	public void  readUserOrder() {
	}
	
	
}
