package com.online.booking.services;

import com.online.booking.entities.Orders;

public interface IOrdersService {
	public Orders save(Orders orders);
	public Iterable<Orders> findAll();
	public Orders findById( int id);
	
	
}
