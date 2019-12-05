package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Orders;
import com.online.booking.repositories.OrdersRepository;

@Service("ordersService")
public class OrdersService implements IOrdersService{
	@Autowired
private OrdersRepository ordersRepository; 
	@Override
	public Orders save(Orders orders) {
		// TODO Auto-generated method stub
		return ordersRepository.save(orders);
	}

	@Override
	public Iterable<Orders> findAll() {
		// TODO Auto-generated method stub
		return ordersRepository.findAll();
	}

	@Override
	public Orders findById(int id) {
		// TODO Auto-generated method stub
		return ordersRepository.findById(id).get();
	}

}
