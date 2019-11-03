package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Room;

@Repository("romRepository")
public interface RoomRepository extends CrudRepository<Room, Integer> {

}
