package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Room;

@Repository("romRepositories")
public interface RoomRepositories extends CrudRepository<Room, Integer> {

}
