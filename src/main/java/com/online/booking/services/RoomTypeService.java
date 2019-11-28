package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.RoomType;
import com.online.booking.repositories.RoomTypeRepository;

@Service("roomTypeService")
public class RoomTypeService implements IRoomTypeService{
@Autowired
private RoomTypeRepository roomTypeRepository;
	@Override
	public Iterable<RoomType> findAll() {
		// TODO Auto-generated method stub
		return roomTypeRepository.findAll();
	}

}
