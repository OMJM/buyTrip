package buytrip.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "index"; //WEB-INF/views/index.jsp
	}
	
	@RequestMapping("/{url}")
	public void url() {} //WEB-INF/views/{url}.jsp
}


