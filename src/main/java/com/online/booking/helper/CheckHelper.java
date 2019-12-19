package com.online.booking.helper;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.online.booking.entities.Hotel;
import com.online.booking.entities.ServiceHotel;
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
		
		return  hotel != null && hotelService.find(idHotel).getAccountByAccountId().getId() == idac;
				
				
				
		
	}
	public boolean checkRoomofAccountSession(int idRoom , int idac) {
		
		return roomService.findById(idRoom).getHotel().getAccountByAccountId().getId() == idac;
		
	}
	public String  checkRoleHotel(Hotel hotel , String url) {
		
		
		if (hotel.getAccountByIdAcEmployee() != null && hotel.isStatus() && checkServiceCreateHotel(hotel) ) {
			return url ;
		}else if (hotel.getAccountByIdAcEmployee() == null && hotel.isStatus() == false) {
			return url ;
		}else if (hotel.getAccountByIdAcEmployee() == null && hotel.isStatus() == true) {
			return url ;
		} else {
			return "error.lock";
		}
	
	
		
	}
	public boolean checkHotelSearch(Hotel hotel) {
		
		
		if (hotel.getAccountByIdAcEmployee() != null && hotel.isStatus() && checkServiceCreateHotel(hotel) ) {
			return true ;
		} else {
			return false;
		}
	}
	public boolean checkServiceCreateHotel(Hotel hotel ) {
		boolean result = true;
		Date now = new Date();
		for (ServiceHotel serviceHotel : hotel.getServiceHotels()) {
			if (serviceHotel.getService().getServicetype().getId() == 2  && 
					
					
					serviceHotel.getEndDate().getTime() <= now.getTime() ||
					
					
					serviceHotel.getStartDate().getTime() >= now.getTime()) {
				
				result = false ;
			}
		}
	
		return result ;
	}

}
