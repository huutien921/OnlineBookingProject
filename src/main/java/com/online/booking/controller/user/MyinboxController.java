package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("myinbox")
public class MyinboxController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "myinbox.index";
	}
	
}
