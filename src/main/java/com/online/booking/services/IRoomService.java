package com.online.booking.services;

import java.util.List;

import com.online.booking.entities.Room;

public interface IRoomService {
public Iterable<Room> findAll();
public Room findById(int id);
public Room save(Room room);
public List<Room> searchRoomByStatusAndIdHotel(boolean status, int hotel_id);
}
