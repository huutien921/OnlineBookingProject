package com.online.booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Room;
import com.online.booking.repositories.RoomRepositories;

@Service("romService")
public class RoomService implements IRoomService {
	@Autowired
	private RoomRepositories roomrepository;

	@Override
	public Iterable<Room> findAll() {

		return roomrepository.findAll();
	}

}
