package com.online.booking.services;

import com.online.booking.entities.RoomCategory;

public interface IRoomCategoryService {
	public Iterable<RoomCategory> findAll();
	
}
