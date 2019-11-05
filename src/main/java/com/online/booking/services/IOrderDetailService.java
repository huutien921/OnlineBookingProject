package com.online.booking.services;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.OrderDetail;

public interface IOrderDetailService {
	public List<OrderDetail> findByIdRoom(int idRoom);
	
}
