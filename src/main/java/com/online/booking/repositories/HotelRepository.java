package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.online.booking.entities.Hotel;



@Repository("hotelRepository")
public interface HotelRepository extends  CrudRepository<Hotel,Integer>{
	@Query(value=" from Hotel where  (provincial like %:address% or city like %:address% ) and status = true")
	public List<Hotel> searchByAddress(@Param("address") String address);
	
	@Query(value=" from Hotel where status = false and accountByIdAcEmployee = null")
	public List<Hotel> searchHotelByStatusFalseAndIdAccountEmployeeNull();
	
	@Query(value=" from Hotel where status = false and accountByIdAcEmployee = null and id = :id")
	public Hotel FindHotelByStatusFalseAndIdAccountEmployeeNullById(@Param("id") int id);
	
	@Query(value=" from Hotel where status = :status and accountByIdAcEmployee != null")
	public Iterable<Hotel> searchHotelByStatusAndIdAccountEmployee(@Param("status") boolean status);
	
	@Query(value=" from Hotel where status = :status and accountByIdAcEmployee != null and name like %:name% and starRating.amount =:starRating and country like %:country% and city like %:city% and provincial like %:provincial%")
	public Iterable<Hotel> filterHotelForEmployee(@Param("status") boolean status, @Param("name") String name, @Param("starRating") int starRating, @Param("country") String country, @Param("city") String city, @Param("provincial") String provincial); 
}
