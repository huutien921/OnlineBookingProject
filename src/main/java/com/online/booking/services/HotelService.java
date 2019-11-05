package com.online.booking.services;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.Room;
import com.online.booking.repositories.HotelRepository;

@Service("hotelService")
public class HotelService implements IHotelService {
	@Autowired
	private HotelRepository hotelRepository;
	@Autowired
	private OrderDetailService orderDetailService;
	@Override
	public List<Hotel> searchByAddress(String address, Date checkIn, Date checkOut, int guests, int quanRoom) {
	
		List<Hotel> hotels = new ArrayList<Hotel>();
		// loc danh cach du dieu kien
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		System.out.println("service test date " + dateFormat.format(checkIn));
		for (Hotel hotel : hotelRepository.searchByAddress(address)) {
		for (Room room : hotel.getRooms()) {
			// truy van dieu kien khach san du phong cho khach hang
			if (room.isStatus()==true && room.getCapacity()==guests && room.getAmountOfRoom()>=quanRoom) {
			
			}
		}
		}
		return hotels;
	}

}
