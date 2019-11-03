package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Hotel;



@Repository("hotelRepository")
public interface HotelRepository extends  CrudRepository<Hotel,Integer>{

}
