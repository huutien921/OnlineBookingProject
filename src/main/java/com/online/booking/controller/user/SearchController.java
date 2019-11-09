package com.online.booking.controller.user;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;

@Controller
@RequestMapping(value = { "search" })
public class SearchController {
	@Autowired
	private HotelService hotelService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model ,@RequestParam("address") String address, @RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout, @RequestParam("guests") String guests,
			@RequestParam("room") String room) {
		try {
			Date dateCheckIn = new SimpleDateFormat("MM/dd/yyyy").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("MM/dd/yyyy").parse(checkout);
			
			List<Hotel> hotels =hotelService.searchByAddressAddPriority(address, dateCheckIn, dateCheckOut,
					Integer.parseInt(guests), Integer.parseInt(room));
			
			model.put("hotels", hotels);
			for (Hotel hotel : hotels) {
				System.out.println(hotel.getName());
			}
		
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return "hotels.index";

	}
}
