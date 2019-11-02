package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Service;



@Repository("serviceRepository")
public interface ServiceRepository extends  CrudRepository<Service,Integer>{

}
