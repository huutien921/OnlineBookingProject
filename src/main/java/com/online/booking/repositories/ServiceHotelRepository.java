package com.online.booking.repositories;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.ServiceHotel;



@Repository("serviceHotelRepository")
public interface ServiceHotelRepository extends  CrudRepository<ServiceHotel,Integer>{
	//Lay danh sach service khach san da mua con hoat dong
	@Query(value = "select * from service_hotel where ( (  start_date <= :today ) "
			+ "and ( end_date >= :today ) ) and "
			+ "( id_hotel = :id ) and status = :stt",nativeQuery = true)
	public List<ServiceHotel> findByIdActive(@Param("today") Date today
			, @Param("id") int id,@Param("stt") boolean stt);
}
