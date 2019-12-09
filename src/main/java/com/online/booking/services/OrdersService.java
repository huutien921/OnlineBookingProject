package com.online.booking.services;

import java.util.Date;
import java.util.List;

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

	@Override
	public Orders findOrderNew(int id, Date date) {
		// TODO Auto-generated method stub
		return ordersRepository.findOrderNew(id, date);
	}

	@Override
	public List<Orders> findOrderByAccount(int id) {
		// TODO Auto-generated method stub
		return ordersRepository.findOrderByAccount(id);
	}

}
