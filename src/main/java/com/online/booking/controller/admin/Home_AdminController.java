package com.online.booking.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/home")
public class Home_AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin.home.index";
	}
	
}
