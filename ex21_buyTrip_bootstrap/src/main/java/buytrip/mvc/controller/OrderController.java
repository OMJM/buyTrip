package buytrip.mvc.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;

	//��� ��ǰ�̹��� ������ (�Ӵٿ� ���� ����)
	private String savePath = "C:\\Users\\ldy\\git\\buyTrip\\ex21_buyTrip_bootstrap\\src\\main\\webapp\\resources\\proImg";
	
	/**
	 * ��ǰ ����ϱ� �� ����
	 */
	@RequestMapping("/orderForm")
	public String insertOrderForm() {
      return "order/orderForm"; 
	}
	
	/**
	 * ��ǰ ����ϱ� - ���� �̹���
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder(ProductDTO productDTO, MultipartHttpServletRequest mtRequest,
			Model model, Authentication auth) throws Exception {
		
		UserDTO userDTO = (UserDTO)auth.getPrincipal();
		String memberId = userDTO.getMemberId();
		
		//test
		System.out.println("memberId : "+memberId); 
		
		//productDTO�� �α��ε� id ����
		productDTO.setProposerId(memberId);

		//����list ��������
		List<MultipartFile> flist = mtRequest.getFiles("file");
		String fileName = "";
		
		//����list�� 1�̻��̶��
		if(flist.size()>0) {
			for(MultipartFile mpf : flist) {
				//���� ���ϸ�
				String fName = System.currentTimeMillis()+"_"+mpf.getOriginalFilename();
				
				//������ ������ ���� ����
				mpf.transferTo(new File(savePath+"/"+fName));
				
				//productDTO�� ProductImg�� ������ �����̸�(��)
				fileName += fName+"|";

			}
		}
		//test
		System.out.println("dto�� fileName : "+fileName); 
		
		//productDTO�� 1���̻��� ���ϸ� ����
		productDTO.setProductImg(fileName);
		
		//��ǰ ����ϱ�
		orderService.insertOrder(productDTO);

		return "redirect:readOrders";
	}
		

	
	/**
	 * [mypage] ����� ��ǰ list ����
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
	 * [mypage] ����� ��ǰ �󼼺��� - ���� �̹���
	 */
	@RequestMapping("/readOrderDetail")
	public String readOrderDetail(String productCode, Model model){
		
			ProductDTO productDTO = orderService.readOrderDetail(productCode);

			//�̹��� �ѷ��ֱ�
			String imgName = productDTO.getProductImg();
			System.out.println("imgName"+imgName);
			
			String [] imgArr = imgName.split("\\|");
			List<String> imgList = new ArrayList<>();  
			for(String a : imgArr) {
				System.out.println(a);
				imgList.add(a);
			}
			
			//test
			System.out.println("list ������ : "+imgList.size());
			
			//�̹���list & dto ����
			model.addAttribute("imgList", imgList);
			model.addAttribute("productDTO",productDTO);
			
		return "mypage/mypageDetail";
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
