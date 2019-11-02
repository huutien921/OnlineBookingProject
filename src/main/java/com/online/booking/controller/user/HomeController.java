package com.online.booking.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.services.RoomService;


@Controller
@RequestMapping(value = { "home", "" })
public class HomeController {
	@Autowired
	private RoomService roomService;
	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap map,HttpSession httpSession) {
		map.put("rooms", roomService.findAll());
		// gan session bang account phan quyen user
		httpSession.setAttribute("accountid", 3);
		return "home.index";
	}
}
