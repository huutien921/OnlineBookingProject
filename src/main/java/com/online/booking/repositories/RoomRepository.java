package com.online.booking.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Room;

@Repository("romRepository")
public interface RoomRepository extends CrudRepository<Room, Integer> {
	@Query(value=" from Room where status = :status and hotel.id = :hotel_id")
	public List<Room> searchRoomByStatusAndIdHotel(@Param("status") boolean status, @Param("hotel_id") int hotel_id);
}
