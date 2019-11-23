package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.ImageRoom;



@Repository("imageRoomRepository")
public interface ImageRoomRepository extends  CrudRepository<ImageRoom,Integer>{
@Query(value = "from ImageRoom where room.id = :id")
public List<ImageRoom> findByIdRoom(@Param("id") int id);
}
