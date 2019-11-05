package com.online.booking.controller.user;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoomService;


@Controller
@RequestMapping(value = {"","home" })
public class HomeController {
	@Autowired
	private RoomService roomService;
	@Autowired
	private HotelService hotelService;
	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap map,HttpSession httpSession) {
		map.put("rooms", roomService.findAll());
		map.put("test", "muaxuan.PNG");
	
		//test
		for (Hotel hotel : hotelService.searchByAddress("Lam Dong",new Date(),new Date(),1,1)) {
			System.out.println("ten khach san" +hotel.getName());
			System.out.println("full dia chi"+hotel.getAddressFull());
			System.out.println("thanh pho" +hotel.getCity());
			System.out.println("Tinh thanh" +hotel.getProvincial());
			System.out.println("stt "+hotel.isStatus());
			System.out.println("===================================");
		}
		
		
		//test
		httpSession.setAttribute("accountid", 3);
		return "home.index";
	}
}
