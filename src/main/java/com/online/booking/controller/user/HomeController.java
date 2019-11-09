package com.online.booking.controller.user;

import java.util.Date;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.ServiceHotel;

import com.online.booking.services.RoomService;
import com.online.booking.services.ServiceHotelService;

@Controller
@RequestMapping(value = { "", "home" })
public class HomeController {
	@Autowired
	private RoomService roomService;
	@Autowired
	private ServiceHotelService serviceHotelService;
	
	

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap map, HttpSession httpSession) {
		map.put("rooms", roomService.findAll());
		return "home.index";
	}
}
