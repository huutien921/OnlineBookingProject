package com.online.booking.services;

import java.util.Date;
import java.util.List;
import com.online.booking.entities.Hotel;

public interface IHotelService {
	public List<Hotel> searchByAddressAddPriority( String address, Date checkIn,Date checkOut,int guests,int room);
	public List<Hotel> searchByAddressAddPriorityAddPrice( String address, Date checkIn,
			Date checkOut,int guests,int room , double minPrice , double maxPrice);
	public Hotel findById(int id);
}
