package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("promotions")
public class PromotionsController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "promotions.index";
	}
	
}
