package com.online.booking.controller.superuser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("error")
public class ErrorController {
	
	@RequestMapping(value = "404", method = RequestMethod.GET)
	public String  error404() {
		
		return "error.404";
		
	}
	@RequestMapping(value = "500", method = RequestMethod.GET)
	public String  error500() {
		
		return "error.500";
		
	}

}
