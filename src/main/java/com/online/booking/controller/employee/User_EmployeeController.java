package com.online.booking.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/employee/user")
public class User_EmployeeController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "employee.user.index";
	}
	
}
