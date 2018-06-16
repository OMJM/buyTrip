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

	//등록 상품이미지 저장경로 (임다영 폴더 기준)
	private String savePath = "C:\\Users\\ldy\\git\\buyTrip\\ex21_buyTrip_bootstrap\\src\\main\\webapp\\resources\\proImg";
	
	/**
	 * 상품 등록하기 폼 띄우기
	 */
	@RequestMapping("/orderForm")
	public String insertOrderForm() {
      return "order/orderForm"; 
	}
	
	/**
	 * 상품 등록하기 - 다중 이미지
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder(ProductDTO productDTO, MultipartHttpServletRequest mtRequest,
			Model model, Authentication auth) throws Exception {
		
		UserDTO userDTO = (UserDTO)auth.getPrincipal();
		String memberId = userDTO.getMemberId();
		
		//test
		System.out.println("memberId : "+memberId); 
		
		//productDTO에 로그인된 id 저장
		productDTO.setProposerId(memberId);

		//파일list 가져오기
		List<MultipartFile> flist = mtRequest.getFiles("file");
		String fileName = "";
		
		//파일list가 1이상이라면
		if(flist.size()>0) {
			for(MultipartFile mpf : flist) {
				//원본 파일명
				String fName = System.currentTimeMillis()+"_"+mpf.getOriginalFilename();
				
				//지정한 폴더로 파일 복사
				mpf.transferTo(new File(savePath+"/"+fName));
				
				//productDTO의 ProductImg에 저장할 파일이름(들)
				fileName += fName+"|";

			}
		}
		//test
		System.out.println("dto의 fileName : "+fileName); 
		
		//productDTO에 1개이상의 파일명 저장
		productDTO.setProductImg(fileName);
		
		//상품 등록하기
		orderService.insertOrder(productDTO);

		return "redirect:readOrders";
	}
		

	
	/**
	 * [mypage] 등록한 상품 list 보기
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
	 * [mypage] 등록한 상품 상세보기 - 다중 이미지
	 */
	@RequestMapping("/readOrderDetail")
	public String readOrderDetail(String productCode, Model model){
		
			ProductDTO productDTO = orderService.readOrderDetail(productCode);

			//이미지 뿌려주기
			String imgName = productDTO.getProductImg();
			System.out.println("imgName"+imgName);
			
			String [] imgArr = imgName.split("\\|");
			List<String> imgList = new ArrayList<>();  
			for(String a : imgArr) {
				System.out.println(a);
				imgList.add(a);
			}
			
			//test
			System.out.println("list 사이즈 : "+imgList.size());
			
			//이미지list & dto 저장
			model.addAttribute("imgList", imgList);
			model.addAttribute("productDTO",productDTO);
			
		return "mypage/mypageDetail";
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
