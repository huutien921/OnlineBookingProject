package com.online.booking.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.online.booking.entities.ImageRoom;
import com.online.booking.entities.ImageRoomEntity;
import com.online.booking.entities.Room;
import com.online.booking.repositories.ImageRoomRepository;

@Service("imageRoomService")
public class ImageRoomService implements IImageRoomService {
	@Autowired
	private ImageRoomRepository imageRoomRepository;
	@Autowired
	private RoomService roomService;

	@Override
	public List<ImageRoom> findByIdRoom(int id) {

		return imageRoomRepository.findByIdRoom(id);
	}

	@Override
	public List<ImageRoomEntity> findByIdRoomImageRoomEntity(int id) {

		List<ImageRoom> imageRooms = findByIdRoom(id);
		List<ImageRoomEntity> resultRooms = new ArrayList<ImageRoomEntity>();
		Room room = roomService.findById(id);
		ImageRoomEntity imageRoom = new ImageRoomEntity();
		imageRoom.setAlt(room.getName());
		imageRoom.setSrc(room.getSrcIcon());
		imageRoom.setType(true);
		resultRooms.add(imageRoom);
		for (ImageRoom item : imageRooms) {
			ImageRoomEntity imageRoomEntity = new ImageRoomEntity();
			imageRoomEntity.setSrc(item.getSrc());
			imageRoomEntity.setAlt(item.getAlt());
			imageRoomEntity.setType(false);
			resultRooms.add(imageRoomEntity);
		}

		return resultRooms;
	}

}
