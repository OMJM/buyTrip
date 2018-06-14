package buytrip.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	//회원정보수정시 비밀번호 암호화처리를 위한 객체를 주입받는다
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
	
	/**
	 * 회원가입 폼 띄우기
	 */
	@RequestMapping("/signup")
	public String signupForm(UserDTO userDTO) {
		userService.signup(userDTO);
		
		return "redirect:/";
	}
	
	/**
	 * 회원가입하기
	 */
	@RequestMapping("/signupForm")	
	public void signup() {}
	
	/**
	 * 로그인 폼 띄우기
	 */
	@RequestMapping("/loginForm")
	public void loginForm() {}
	
	/**
	 * 로그인하기
	 */
	@RequestMapping("/login")
	public void login(){
		System.out.println("user/login의 Controller 실행됨...");
	}
	
	/**
	 * 로그아웃하기
	 */
	@RequestMapping("/logout")
	public void logout() {}
	
	
	/**
	 * 비밀번호 찾기 폼 띄우기
	 */
	@RequestMapping("/passwordForm")
	public void passwordForm() {}
	
	@RequestMapping("/updateForm") 
	public String updateForm() {
		return "user/updateForm";
	}
	
	@RequestMapping("/updateMemberAction")
	public ModelAndView updateMemberAction(HttpServletRequest request, UserDTO vo) {
		System.out.println("1. MemberVO  :: "+vo);
		//회원정보 수정위해 Spring Security 세션 회원정보를 반환받는다
		UserDTO pvo=(UserDTO)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		System.out.println("2. Spring Security 세션 수정 전 회원정보:" + pvo);
		//변경할 비밀번호를 암호화한다 
		String encodePassword=passwordEncoder.encode(vo.getmemberPassword());
		vo.setmemberPassword(encodePassword);
		userService.updateMember(vo);
		
		System.out.println("**********************************************");
		// 수정한 회원정보로 Spring Security 세션 회원정보를 업데이트한다
		pvo.setmemberPassword(encodePassword);
		pvo.setmemberName(vo.getmemberName());
		pvo.setMobile(vo.getMobile());
		System.out.println("3. Spring Security 세션 수정 후 회원정보:" + pvo);
				
		
		return new ModelAndView("user/update_result");
	}
	
	/**
	 * 비밀번호 재설정하기
	 */
	@RequestMapping("/updatePassword")
	public void updatePassword() {}
	
	/**
	 * 프로필 보기
	 */
	@RequestMapping("/profile")
	public void profile() {
		//UserDTO user = dao.selectProfile();
		//return new ModelAndView("", "user" , user);
	}
	
	//특정 회원 검색하기
	@RequestMapping("user/findMember")
	public ModelAndView findMember(HttpServletRequest request) {
		String id = request.getParameter("id");
		UserDTO userdto=userService.findMemberById(id);
		return new ModelAndView("user/findMember_result","userdto",userdto);
	}
	
	/**
	 * 프로필 수정 폼 띄우기
	 */
	@RequestMapping("/profileForm")
	public void profileForm() {
		//UserDTO user = dao.selectProfile();
		//return new ModelAndView("", "user" , user);
	}
	
	/**
	 * 프로필 수정하기
	 */
	@RequestMapping("/updateProfile")
	public void updateProfile() {
		//UserDTO dbUser = updateProfile(user);
		//return new ModelAndView("", "user" , dbUser);
	}
	
	/**
	 * 회원 탈퇴하기
	 */
	@RequestMapping("/withdraw")
	public String withdraw(String memberId , String memberPassword) {
		userService.withdraw(memberId, memberPassword);
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(value="/emailAuth" , produces="text/plain;charset=utf-8")
	@ResponseBody
	public String emailAuth(HttpServletRequest request) {
	    ModelAndView mav = new ModelAndView();
	        
	    String email = request.getParameter("email");
	    String authNum = "";
	        
	    System.out.println(email);
	    authNum = randomNum();
	    //가입승인에 사용될 인증키 난수 발생    
	    sendEmail(email, authNum);
	    //이메일전송
	    String str = authNum;
	        
	        
	    return str;
	}
	
	private String randomNum() {
	    StringBuffer buffer = new StringBuffer();
	        
	    for( int i = 0 ; i <= 6 ; i++) {
	        int n = (int)(Math.random()*10);
	        buffer.append(n);
	    }
	        
	    return buffer.toString();
	}
	
	public void sendEmail(String email , String authNum ) {
	    //이메일 발송 메소드
		
		System.out.println(authNum);
		
	    SimpleMailMessage mailMessage = new SimpleMailMessage();
	    mailMessage.setSubject("회원가입 안내 .[이메일 제목]");
	    mailMessage.setFrom("bytrip@gmail.com");
	    mailMessage.setText("[이메일 내용]회원가입을 환영합니다. 인증번호를 확인해주세요. [ "+authNum+" ]");
	    mailMessage.setTo(email);
	    try {
	        mailSender.send(mailMessage);
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	}
	
	
	
	
}
