package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.Hotel;

public interface IHotelService {
	public Hotel find(int id);
	
	public List<Hotel> searchByAddressAddPriority( String address, Date checkIn,Date checkOut,int guests,int room);

	public List<Hotel> searchHotelByStatusFalseAndIdAccountEmployeeNull();
	
	public Hotel FindHotelByStatusFalseAndIdAccountEmployeeNullById(int id);
	
	public Iterable<Hotel> searchHotelByStatusAndIdAccountEmployee(boolean status);
	
	public Iterable<Hotel> filterHotelForEmployee(boolean status, String name, int starRating, String country, String city, String provincial); 
}
