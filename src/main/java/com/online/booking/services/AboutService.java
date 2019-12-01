package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.About;
import com.online.booking.repositories.AboutRepository;

@Service("aboutService")
public class AboutService implements IAboutService {
	@Autowired
private AboutRepository  aboutRepository;
	@Override
	public About findById(int id) {
		// TODO Auto-generated method stub
		return aboutRepository.findById(id).get();
	}

}
