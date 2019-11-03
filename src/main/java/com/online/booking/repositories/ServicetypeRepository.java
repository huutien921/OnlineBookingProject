package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Servicetype;



@Repository("servicetypeRepository")
public interface ServicetypeRepository extends  CrudRepository<Servicetype,Integer>{

}
