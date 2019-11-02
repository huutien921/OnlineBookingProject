package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("hotels")
public class HotelsController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "hotels.index";
	}
	
	@RequestMapping(value = "hotel_detail",method = RequestMethod.GET)
	public String hotel_detail() {
		return "hotels.hotel_detail";
	}
	
}
