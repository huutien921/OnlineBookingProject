package com.online.booking.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.booking.entities.Evaluate;
import com.online.booking.services.EvaluateService;
import com.online.booking.services.HotelService;

@Controller
@RequestMapping("hotels")
public class HotelsController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private EvaluateService evaluateService;
	
	@RequestMapping(value = "hotel_detail",method = RequestMethod.GET)
	public String hotel_detail( @RequestParam("address") String address,
			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,
			@RequestParam("guests") String guests, @RequestParam("room") String room,@RequestParam("id") int id ,ModelMap map) {
	map.put("hotel", hotelService.findById(id));
	System.out.println(checkin);
	List<Evaluate> evaluatesHotel = evaluateService.findByHotelDescAndLimit(id, 5);
	map.put("evaluates", evaluatesHotel);
	
		return "hotels.hotel_detail";
	}
	
}
