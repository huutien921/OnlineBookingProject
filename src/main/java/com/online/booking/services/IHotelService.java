package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.Hotel;

public interface IHotelService {
	public List<Hotel> searchByAddress( String address, Date checkIn,Date checkOut,int guests,int room);
	
}
