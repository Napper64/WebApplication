package mcattack.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/app")
public class AppController {

	@RequestMapping(method = RequestMethod.GET)
	public String viewApplication() {
		return "index";
	}
}