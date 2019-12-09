package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("saved")
public class SavedController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("title", "Saved");
		return "saved.index";
	}
	
}
