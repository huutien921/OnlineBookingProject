package com.online.booking.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;

@RestController
@RequestMapping("api/search")
public class SearchRestController {
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "price",method = RequestMethod.GET, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)

	public ResponseEntity<List<Hotel>> searchPrice(@RequestParam("address") String address,
			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,
			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice) {
		
		try {
			Date dateCheckIn = new SimpleDateFormat("MM/dd/yyyy").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("MM/dd/yyyy").parse(checkout);

			List<Hotel> hotels =hotelService.searchByAddressAddPriorityAddPrice(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice);

			return new ResponseEntity<List<Hotel>>(hotels, HttpStatus.OK);
			
			

		} catch (Exception e) {
			return new ResponseEntity<List<Hotel>>(HttpStatus.BAD_REQUEST);
		}

		

	}
}
