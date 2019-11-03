package com.online.booking.controller.superadmin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/superadmin/account")
public class Account_SuperAdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "superadmin.account.index";
	}
	
}
