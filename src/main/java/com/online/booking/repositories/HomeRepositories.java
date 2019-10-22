package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import com.online.booking.entities.Home;



@Repository("homeRepository")
public interface HomeRepositories extends CrudRepository<Home, Integer> {
	@Query("from Home where id ='1'")
	public Home Hello();

}
