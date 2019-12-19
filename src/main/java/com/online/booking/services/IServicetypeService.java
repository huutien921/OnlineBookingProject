package com.online.booking.services;

import com.online.booking.entities.Servicetype;

public interface IServicetypeService {
	
	public Iterable<Servicetype> findAll(); 
	public Servicetype save(Servicetype servicetype);
	public Servicetype find(int id);
}
