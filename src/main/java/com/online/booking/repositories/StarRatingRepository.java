package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.StarRating;



@Repository("starRatingRepository")
public interface StarRatingRepository extends  CrudRepository<StarRating,Integer>{

}
