package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Servicetype;
import com.online.booking.repositories.ServicetypeRepository;

@Service("servicetypeService")
public class ServicetypeService implements IServicetypeService {
	@Autowired
	ServicetypeRepository serviceTypeRepository;
	@Override
	public Iterable<Servicetype> findAll() {
		// TODO Auto-generated method stub
		return serviceTypeRepository.findAll();
	}
	@Override
	public Servicetype save(Servicetype servicetype) {
		// TODO Auto-generated method stub
		return serviceTypeRepository.save(servicetype);
	}
}
