package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Blog;



@Repository("blogRepository")
public interface BlogRepository extends  CrudRepository<Blog,Integer>{

}
