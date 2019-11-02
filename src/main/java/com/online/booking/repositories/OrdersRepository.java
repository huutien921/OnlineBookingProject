package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Orders;



@Repository("ordersRepository")
public interface OrdersRepository extends  CrudRepository<Orders,Integer>{

}
