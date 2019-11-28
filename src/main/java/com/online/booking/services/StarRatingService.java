package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.StarRating;
import com.online.booking.repositories.StarRatingRepository;

@Service("starRatingService")
public class StarRatingService implements IStarRatingService {
@Autowired
private StarRatingRepository starRatingRepository;
	@Override
	public Iterable<StarRating> findAll() {
		
		return starRatingRepository.findAll();
	}

}
