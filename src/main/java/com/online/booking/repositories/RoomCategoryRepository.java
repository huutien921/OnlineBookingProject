package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.RoomCategory;



@Repository("roomCategoryRepository")
public interface RoomCategoryRepository extends  CrudRepository<RoomCategory,Integer>{

}
