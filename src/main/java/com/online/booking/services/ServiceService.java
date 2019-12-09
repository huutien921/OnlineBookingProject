package com.online.booking.services;

import java.util.List;

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
	@Override
	public Iterable<com.online.booking.entities.Service> findAll() {
		// TODO Auto-generated method stub
		return serviceRepository.findAll();
	}

	@Override
	public com.online.booking.entities.Service find(int id) {
		// TODO Auto-generated method stub
		return serviceRepository.findById(id).get();
	}

	@Override
	public com.online.booking.entities.Service save(com.online.booking.entities.Service service) {
		// TODO Auto-generated method stub
		return serviceRepository.save(service);
	}
	@Override
	public List<com.online.booking.entities.Service> findByTypeService(int id) {
		// TODO Auto-generated method stub
		return serviceRepository.findByTypeService(id);
	}
}
