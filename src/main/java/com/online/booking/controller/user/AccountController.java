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
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.OrdersService;

@Controller
@RequestMapping("user/account")
public class AccountController {
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private OrderDetailService orderDetailService; 

	@RequestMapping( value = "statusOrder", method = RequestMethod.GET)
	public String statusOrder(Authentication authentication, ModelMap map ) {
		
		String username = authentication.getName();
		int accountid = accountService.findByUsernameAndStatus(username, true).getId();
	
		map.put("orderdetails",orderDetailService.findByAccountAndcheckInOut(accountid, new Date()));
		
		map.put("now", new Date());
		map.put("history", orderDetailService.findByHistory(accountid, new Date()));
		map.put("title", "My order");
		return "account.statusOrder";
	}
	
	@RequestMapping( value = "profile", method = RequestMethod.GET)
	public String profile(ModelMap map) {
		map.put("title", "Profile");
		return "account.profile";
	}
}
