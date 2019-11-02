package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.ServiceHotel;



@Repository("serviceHotelRepository")
public interface ServiceHotelRepository extends  CrudRepository<ServiceHotel,Integer>{

}
