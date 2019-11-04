package com.online.booking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Hotel;
import com.online.booking.repositories.HotelRepository;

@Service ("hotelService")
public class HotelService implements IHotelService {
@Autowired
private HotelRepository hotelRepository;
	@Override
	public List<Hotel> searchByAddress(String address) {
		// TODO Auto-generated method stub
		return hotelRepository.searchByAddress(address);
	}

}
