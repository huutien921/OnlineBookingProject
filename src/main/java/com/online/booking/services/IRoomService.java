package com.online.booking.services;

import com.online.booking.entities.Room;

public interface IRoomService {
public Iterable<Room> findAll();
public Room findById(int id);
	
	
}
