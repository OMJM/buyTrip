package buytrip.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import buytrip.mvc.model.user.dto.UserDTO;
import buytrip.mvc.model.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	//@Autowired
	private UserService userService;
	
	/**
	 * 회원가입 폼 띄우기
	 */
	@RequestMapping("/signupForm")
	public String signupForm(UserDTO userDTO) {
		userService.signup(userDTO);
		
		return "redirect:/";
	}
	
	/**
	 * 회원가입하기
	 */
	@RequestMapping("/signup")	
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
	public void login(){}
	
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
	public void withdraw() {}
	
	
	
	
}
