package com.online.booking.services;

import java.util.List;

import com.online.booking.entities.Service;

public interface IServiceService {
	public Service findById(int id);
	public Iterable<Service> findAll();
	public Service find(int id);
	public Service save(Service service);
	public List<Service> findByTypeService( int id);
	
}
