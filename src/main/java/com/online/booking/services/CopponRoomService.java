package com.online.booking.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.CopponRoom;
import com.online.booking.entities.CopponRoomEntity;
import com.online.booking.entities.Room;
import com.online.booking.repositories.CopponRoomRepository;

@Service("copponRoomService")
public class CopponRoomService implements ICopponRoomService {
	@Autowired
	private CopponRoomRepository copponRoomRepository;
	@Autowired
	private RoomService roomService;
	@Autowired
	private HotelService hotelService;

	@Override
	public CopponRoom save(CopponRoom copponRoom) {

		return copponRoomRepository.save(copponRoom);
	}

	@Override
	public boolean createCopponRoom(String[] roomId, String name, double val, boolean status) {
		boolean result = true;
		CopponRoom copponRoom = new CopponRoom();
		copponRoom.setName(name);
		copponRoom.setSale(val);
		copponRoom.setStatus(status);
		CopponRoom copponRoomResult = save(copponRoom);
		if (copponRoomResult != null) {

			for (int i = 0; i < roomId.length; i++) {
				Room room = roomService.findById(Integer.parseInt(roomId[i]));
				room.setCopponRoom(copponRoomResult);
				if (roomService.save(room) == null) {
					result = false;
				}

			}
		} else {

			result = false;

		}
		deleteByObjectRoomEmpty(copponRoomResult);

		return result;
	}

	@Override
	public List<CopponRoomEntity> getCopponRoomEntitiesByIdHotel(int id) {
		List<CopponRoomEntity> copponRoomEntities = new ArrayList<CopponRoomEntity>();
		for (Room room : hotelService.findById(id).getRooms()) {
			CopponRoomEntity copponRoomEntity = new CopponRoomEntity();
			copponRoomEntity.setRoomName(room.getName());
			copponRoomEntity.setDiscountValue(room.getCopponRoom().getSale());
			copponRoomEntity.setDiscountName(room.getCopponRoom().getName());
			copponRoomEntity.setStatus(room.getCopponRoom().isStatus());
			copponRoomEntities.add(copponRoomEntity);
		}
		return copponRoomEntities;
	}


	@Override
	public void deleteById(int id) {
		copponRoomRepository.deleteById(id);
		
	}

	@Override
	public Iterable<CopponRoom> findAll() {
		
		return copponRoomRepository.findAll();
	}
public List<CopponRoom> findIsRoomsEmpty(){
	List<CopponRoom> copponRoomEmptys = new ArrayList<CopponRoom>();
	for (CopponRoom copponRoom : findAll()) {
		if (copponRoom.getRooms().isEmpty()) {
			copponRoomEmptys.add(copponRoom);
		}
		
		
	}
	System.out.println(copponRoomEmptys.size());
	return copponRoomEmptys;
	
	
}

@Override
public void deleteByObjectRoomEmpty(CopponRoom coppon) {
	
	for (CopponRoom copponRoom : findIsRoomsEmpty()) {
		if (copponRoom.getId()!=  coppon.getId()) {
			copponRoomRepository.delete(copponRoom);
		}
	
	}
	
	
}
}
