package com.online.booking.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/service")
public class Service_AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin.service.index";
	}
	
}
