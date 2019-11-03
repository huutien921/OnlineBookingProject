package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.ImageRoom;



@Repository("imageRoomRepository")
public interface ImageRoomRepository extends  CrudRepository<ImageRoom,Integer>{

}
