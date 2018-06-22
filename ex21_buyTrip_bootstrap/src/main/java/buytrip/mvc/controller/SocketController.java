package buytrip.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SocketController {
	
	@RequestMapping("/chat")
	public String viewChattingPage() {
		
		return "chatting/chat";
	}
	
	@RequestMapping("/message")
	public String viewMessagePage() {
		
		return "chatting/message";
	}

}
