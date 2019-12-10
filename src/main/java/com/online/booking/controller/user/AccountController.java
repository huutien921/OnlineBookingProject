package com.online.booking.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.services.AccountService;
import com.online.booking.services.OrdersService;

@Controller
@RequestMapping("user/account")
public class AccountController {
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private AccountService accountService;

	@RequestMapping( value = "statusOrder", method = RequestMethod.GET)
	public String statusOrder(Authentication authentication, ModelMap map ) {
		String username = authentication.getName();
		
		int accountid = accountService.findByUsernameAndStatus(username, true).getId();
	
		map.put("ordernew", ordersService.findOrderNew(accountid, new Date()));
		map.put("orders", ordersService.findOrderByAccount(accountid));
		map.put("title", "My order");
		return "account.statusOrder";
	}
	
	@RequestMapping( value = "profile", method = RequestMethod.GET)
	public String profile(ModelMap map) {
		map.put("title", "Profile");
		return "account.profile";
	}
}
