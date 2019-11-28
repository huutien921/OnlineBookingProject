package com.online.booking.services;

import java.util.List;

import com.online.booking.entities.CopponRoom;
import com.online.booking.entities.CopponRoomEntity;

public interface ICopponRoomService {
	public CopponRoom save(CopponRoom copponRoom);

	public boolean createCopponRoom(String[] roomId, String name, double val, boolean status);

	public List<CopponRoomEntity> getCopponRoomEntitiesByIdHotel(int id);
	public void deleteById(int id);
	public void deleteByObjectRoomEmpty(CopponRoom copponRoom);
	public Iterable<CopponRoom> findAll();
	

}
