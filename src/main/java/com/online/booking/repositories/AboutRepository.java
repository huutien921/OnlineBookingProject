package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.About;

@Repository("aboutRepository")
public interface AboutRepository extends CrudRepository<About,Integer> {

	
	
}
