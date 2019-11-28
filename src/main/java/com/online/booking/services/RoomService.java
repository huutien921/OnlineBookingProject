package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Room;
import com.online.booking.repositories.RoomRepository;

@Service("romService")
public class RoomService implements IRoomService {
	@Autowired
	private RoomRepository roomRepository;

	@Override
	public Iterable<Room> findAll() {

		return roomRepository.findAll();
	}

	@Override
	public Room findById(int id) {
		// TODO Auto-generated method stub
		return roomRepository.findById(id).get();
	}

	@Override
	public Room save(Room room) {
		// TODO Auto-generated method stub
		return roomRepository.save(room);
	}

}
