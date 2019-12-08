package com.online.booking.controller.user;

import java.util.Date;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.ServiceHotel;
import com.online.booking.services.BlogService;
import com.online.booking.services.RoomService;
import com.online.booking.services.SaleService;
import com.online.booking.services.ServiceHotelService;

@Controller
@RequestMapping(value = { "", "home" })
public class HomeController {
	@Autowired
	private RoomService roomService;
	@Autowired
	private ServiceHotelService serviceHotelService;
	@Autowired
	private SaleService saleService;
	@Autowired
	private BlogService blogService;
	

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(Authentication authentication, ModelMap map, HttpSession httpSession) {
		try {
			String username = authentication.getName();
			map.put("name", username);
		} catch (Exception e) {
			// TODO: handle exception
		}
			
			
		
		
		map.put("new1Promotions", saleService.searchLimitSale(true, 1));
		map.put("new1Blog", blogService.searchLimitBlog(true, 1));
		map.put("newPromotions", saleService.searchLimitSale(true, 3));
		map.put("newBlog", blogService.searchLimitBlog(true, 3));
		map.put("rooms", roomService.findAll());
		return "home.index";
	}
}
