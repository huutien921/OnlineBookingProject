package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.OrderDetail;



@Repository("orderDetailRepository")
public interface OrderDetailRepository extends  CrudRepository<OrderDetail,Integer>{

}
