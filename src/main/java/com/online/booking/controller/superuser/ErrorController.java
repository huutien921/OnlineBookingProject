package com.online.booking.controller.superuser;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("error")
public class ErrorController {
	
	@RequestMapping(value = "404", method = RequestMethod.GET)
	public String  error404(ModelMap model) {
		model.put("title", "error");
		return "error.404";
		
	}
	@RequestMapping(value = "500", method = RequestMethod.GET)
	public String  error500(ModelMap model) {
		model.put("title", "error");
		return "error.500";
		
	}

}
