package com.online.booking.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.booking.entities.Evaluate;
import com.online.booking.entities.Hotel;
import com.online.booking.services.EvaluateService;
import com.online.booking.services.HotelService;

@Controller
@RequestMapping("hotels")
public class HotelsController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private EvaluateService evaluateService;

	@RequestMapping(value = "hotel_detail", method = RequestMethod.GET)
	public String hotel_detail(@RequestParam("address") String address, @RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout, @RequestParam("guests") int guests,
			@RequestParam("room") int room, @RequestParam("id") int id, ModelMap map) {
		try {
			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			map.put("hotel", hotelService.findById(id));
		
			List<Evaluate> evaluatesHotel = evaluateService.findByHotelDescAndLimit(id, 10);
			System.out.println(evaluatesHotel.size());
			map.put("evaluates", evaluatesHotel);
			// lay khach san lien quan limit
			List<Hotel> hotelsRelated = hotelService.relatedHotelLimitAddPriority(address, dateCheckIn, dateCheckOut,
					guests, room, 3, hotelService.findById(id));
			map.put("hotelsRelated", hotelsRelated);
		} catch (Exception e) {
			System.err.println(e.getMessage());
			System.out.println("loi");
		}
		return "hotels.hotel_detail";

	}
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public String cart() {
		return "hotels.cart";
	}
			
}
