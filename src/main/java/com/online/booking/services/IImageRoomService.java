package com.online.booking.services;

import java.util.List;



import com.online.booking.entities.ImageRoom;
import com.online.booking.entities.ImageRoomEntity;

public interface IImageRoomService {
	public List<ImageRoom> findByIdRoom( int id);
	public List<ImageRoomEntity> findByIdRoomImageRoomEntity(int id);
	public ImageRoom save(ImageRoom roomService);
	public ImageRoom findById(int id);
	public void delete(ImageRoom imageRoom);
}
