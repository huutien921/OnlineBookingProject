package com.online.booking.controller.user;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.online.booking.entities.Hotel;

import com.online.booking.services.HotelService;

@Controller
@RequestMapping(value = { "search" })
public class SearchController {
	@Autowired
	private HotelService hotelService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request , ModelMap model, @RequestParam("address") String address,
			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,
			@RequestParam("guests") String guests, @RequestParam("room") String room) {
		model.put("address", address);
		model.put("checkin", checkin);
		model.put("checkout", checkout);
		model.put("guests", guests);
		model.put("rooms", room);
		try {
			Date dateCheckIn = new SimpleDateFormat("MM/dd/yyyy").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("MM/dd/yyyy").parse(checkout);

			List<Hotel> hotels = hotelService.searchByAddressAddPriority(address, dateCheckIn, dateCheckOut,
					Integer.parseInt(guests), Integer.parseInt(room));
			PagedListHolder pagedListHolder = new PagedListHolder(hotels);
			int page = ServletRequestUtils.getIntParameter(request, "p", 0);
			pagedListHolder.setPage(page);
			pagedListHolder.setPageSize(3);
			model.put("hotels", hotels);
			for (Hotel hotel : hotels) {
				System.out.println(hotel.getName());
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return "hotels.index";

	}

	@RequestMapping(value = "ajax/price", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public  List<Hotel> searchPrice(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,

			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice) {

		try {
		
			Date dateCheckIn = new SimpleDateFormat("MM/dd/yyyy").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("MM/dd/yyyy").parse(checkout);

			List<Hotel> hotels = hotelService.searchByAddressAddPriorityAddPrice(address, dateCheckIn, dateCheckOut,
					guests, rooms, minprice, maxprice);

			for (Hotel hotel : hotels) {
				System.out.println(hotel.getName());
			}
			
	
			
			return  hotels;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return  null;
		}

		

	}

}
