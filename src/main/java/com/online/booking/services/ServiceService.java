package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.repositories.ServiceRepository;

@Service("serviceService")
public class ServiceService implements IServiceService {
	@Autowired
	private ServiceRepository serviceRepository;

	@Override
	public com.online.booking.entities.Service findById(int id) {
	
		return serviceRepository.findById(id).get();
	}

}
