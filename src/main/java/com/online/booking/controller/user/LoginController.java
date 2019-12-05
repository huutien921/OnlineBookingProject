package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("login")
public class LoginController {
	@RequestMapping(value = {"","login"} ,method = RequestMethod.GET)
	public String index() {
		return "login.index";
	}
	
	@RequestMapping( value = "statusOrder", method = RequestMethod.GET)
	public String statusOrder() {
		return "login.statusOrder";
	}
	
	@RequestMapping( value = "profile", method = RequestMethod.GET)
	public String profile() {
		return "login.profile";
	}
}
