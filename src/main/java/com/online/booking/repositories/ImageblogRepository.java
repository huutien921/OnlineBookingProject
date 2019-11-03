package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Imageblog;



@Repository("imageblogRepository")
public interface ImageblogRepository extends  CrudRepository<Imageblog,Integer>{

}
