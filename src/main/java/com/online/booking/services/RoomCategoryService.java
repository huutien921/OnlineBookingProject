package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.RoomCategory;
import com.online.booking.repositories.RoomCategoryRepository;

@Service("roomCategoryService")
public class RoomCategoryService implements IRoomCategoryService {
@Autowired 
private RoomCategoryRepository roomCategoryRepository; 
	@Override
	public Iterable<RoomCategory> findAll() {
	
		return roomCategoryRepository.findAll();
	}

}
