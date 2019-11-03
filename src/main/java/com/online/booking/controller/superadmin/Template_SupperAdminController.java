package com.online.booking.controller.superadmin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/superadmin/template")
public class Template_SupperAdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "superadmin.template.index";
	}
	
}
