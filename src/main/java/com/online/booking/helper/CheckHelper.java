package com.online.booking.helper;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoomService;

@Component("checkHelper")
public class CheckHelper {
	@Autowired 
	private HotelService hotelService ;
	@Autowired
	private RoomService roomService;

	public boolean checkHotelofAccountSession(int idHotel , int idac) {
		Hotel hotel = hotelService.findById(idHotel);
		return  hotel != null && hotelService.find(idHotel).getAccountByAccountId().getId() == idac &&
				 hotel.isStatus() == true ;
				
				
				
		
	}
	public boolean checkRoomofAccountSession(int idRoom , int idac) {
		
		return roomService.findById(idRoom).getHotel().getAccountByAccountId().getId() == idac;
		
	}

}
