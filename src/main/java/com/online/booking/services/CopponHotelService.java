package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.CopponHotel;
import com.online.booking.repositories.CopponHotelRepository;

@Service("copponHotelService")
public class CopponHotelService implements ICopponHotelService{
	@Autowired 
	private CopponHotelRepository copponHotelRepository;

	@Override
	public CopponHotel save(CopponHotel copponHotel) {
		// TODO Auto-generated method stub
		return copponHotelRepository.save(copponHotel);
	}

	@Override
	public CopponHotel findById(int id) {
		
		return copponHotelRepository.findById(id).get();
	}

}
