package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Email;



@Repository("emailRepository")
public interface EmailRepository extends  CrudRepository<Email,Integer>{

}
