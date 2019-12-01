package com.online.booking.controller.superuser;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.services.AboutService;
import com.online.booking.services.AccountService;
import com.online.booking.services.ServiceService;

@Controller
@RequestMapping("/superuser/servicehotel")
public class ServiceHotelController {
	@Autowired
	private ServiceService serviceService; 
	@Autowired 
	private AccountService accountService; 
	@Autowired 
	private AboutService aboutService;
	
	@RequestMapping(value = "buyService", method = RequestMethod.GET)
	public String buyServiceAddHotel(ModelMap map) {
		map.put("account",accountService.findById(3));
		map.put("service", serviceService.findById(5));
		map.put("now", new  Date());
		map.put("about", aboutService.findById(1));
		
		return "superuser.servicehotel.buy";
	}

}
