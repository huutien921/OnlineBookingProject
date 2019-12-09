package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Service;



@Repository("serviceRepository")
public interface ServiceRepository extends  CrudRepository<Service,Integer>{
@Query(value = "from Service where servicetype.id = :id ")
	public List<Service> findByTypeService(@Param("id") int id);
	

}
