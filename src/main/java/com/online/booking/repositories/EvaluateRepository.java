package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Evaluate;



@Repository("evaluateRepository")
public interface EvaluateRepository extends  CrudRepository<Evaluate,Integer>{
	@Query("from Evaluate where hotel.id = :id")
	public List<Evaluate> findByHotel(@Param("id") int id);
	@Query("from Evaluate where room.id = :id")
	public List<Evaluate> findByRoom(@Param("id") int id);
	@Query(value = "select * from evaluate where hotel_id = :id  order by id desc limit :n" ,nativeQuery = true)
	public List<Evaluate> findByHotelDescAndLimit(@Param("id") int id , @Param("n") int n);
	@Query(value = "select * from room where room_id = :id order by id desc limit :n" ,nativeQuery = true)
	public List<Evaluate> findByRoomDescAndLimit(@Param("id") int id , @Param("n") int n);
	
}
