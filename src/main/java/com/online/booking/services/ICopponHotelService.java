package com.online.booking.services;

import com.online.booking.entities.CopponHotel;

public interface ICopponHotelService {
	public CopponHotel save( CopponHotel copponHotel);
	public CopponHotel findById(int id) ;
	
}
