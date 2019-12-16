package com.online.booking.helper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.RoomService;

@Component("checkUrlHelper")
public class CheckUrlHelper {
	@Autowired 
	private HotelService hotelService ;
	@Autowired
	private RoomService roomService;
	@Autowired
	private OrderDetailService orderDetailService;

public boolean checkUrlBooking(int roomid, String checkin,
	 String checkout,int rooms) {
	boolean result = true;
	try {
		
		Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
	
		Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
		long checkQuantity = orderDetailService.sumQuantityByIdRoomAndDate(roomid, dateCheckIn, dateCheckOut);	
		int quanRoom = roomService.findById(roomid).getAmountOfRoom();
		int quanRoomlicensed = (int) (quanRoom - checkQuantity) ;
		if (quanRoomlicensed < rooms) {
			result = false ;
		
		}
		
	} catch (Exception e) {
		result = false;
	}
	
	return result;
}
	
}