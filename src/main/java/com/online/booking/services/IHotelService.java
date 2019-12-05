package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.HotelEntity;

public interface IHotelService {
	public Hotel find(int id);
	
	public List<Hotel> searchByAddressAddPriority( String address, Date checkIn,Date checkOut,int guests,int room);

	public List<HotelEntity> searchByAddressAddPriorityAddPriceJsonObject( String address, Date checkIn,
			Date checkOut,int guests,int room , double minPrice , double maxPrice);
	
	public List<HotelEntity> searchByAddressAddPriorityAddStarJsonObject( String address, Date checkIn,
			Date checkOut,int guests,int room, double minprice, double maxprice , int amount1 , int amount2, int amount3, int amount4, int amount5, int wifi, int parking, int spa, int gym, int carrental, int airporttransfer, int freebreakfast, int swimmingpool, int payathotel, int assemblyfacilites, int driveway, int doublebed, int queenbed, int kingbed, int singlebed);
	
	public Hotel findById(int id);


	public List<Hotel> searchHotelByStatusFalseAndIdAccountEmployeeNull();
	
	public Hotel FindHotelByStatusFalseAndIdAccountEmployeeNullById(int id);
	
	public Iterable<Hotel> searchHotelByStatusAndIdAccountEmployee(boolean status);
	
	public Iterable<Hotel> filterHotelForEmployee(boolean status, String name, int starRating, String country, String city, String provincial);
	public List<Hotel> relatedHotelLimitAddPriority(String address, Date checkIn,Date checkOut,int guests,int room , int n, Hotel hotel);
	public  List<Hotel> findByAccountId(int id);
	public Hotel save(Hotel hotel);
	
	
}
