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
	 * ȸ������ �� ����
	 */
	@RequestMapping("/signupForm")
	public String signupForm(UserDTO userDTO) {
		userService.signup(userDTO);
		
		return "redirect:/";
	}
	
	/**
	 * ȸ�������ϱ�
	 */
	@RequestMapping("/signup")	
	public void signup() {}
	
	/**
	 * �α��� �� ����
	 */
	@RequestMapping("/loginForm")
	public void loginForm() {}
	
	/**
	 * �α����ϱ�
	 */
	@RequestMapping("/login")
	public void login(){}
	
	/**
	 * �α׾ƿ��ϱ�
	 */
	@RequestMapping("/logout")
	public void logout() {}
	
	
	/**
	 * ��й�ȣ ã�� �� ����
	 */
	@RequestMapping("/passwordForm")
	public void passwordForm() {}
	
	/**
	 * ��й�ȣ �缳���ϱ�
	 */
	@RequestMapping("/updatePassword")
	public void updatePassword() {}
	
	/**
	 * ������ ����
	 */
	@RequestMapping("/profile")
	public void profile() {
		//UserDTO user = dao.selectProfile();
		//return new ModelAndView("", "user" , user);
	}
	
	/**
	 * ������ ���� �� ����
	 */
	@RequestMapping("/profileForm")
	public void profileForm() {
		//UserDTO user = dao.selectProfile();
		//return new ModelAndView("", "user" , user);
	}
	
	/**
	 * ������ �����ϱ�
	 */
	@RequestMapping("/updateProfile")
	public void updateProfile() {
		//UserDTO dbUser = updateProfile(user);
		//return new ModelAndView("", "user" , dbUser);
	}
	
	/**
	 * ȸ�� Ż���ϱ�
	 */
	@RequestMapping("/withdraw")
	public void withdraw() {}
	
	
	
	
}
