package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.RoomType;



@Repository("roomTypeRepository")
public interface RoomTypeRepository extends  CrudRepository<RoomType,Integer>{

}
