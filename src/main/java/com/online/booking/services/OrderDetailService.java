package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.OrderDetail;
import com.online.booking.repositories.OrderDetailRepository;

@Service("orderDetailService")
public class OrderDetailService implements IOrderDetailService{
@Autowired
private OrderDetailRepository orderDetailRepository;
	@Override
	public List<OrderDetail> findByIdRoom(int idRoom) {
		
		return orderDetailRepository.findByIdRoom(idRoom) ;
	}
	@Override
	public Long sumQuantityByIdRoomAndDate(int idRoom , Date dateCheckIn, Date dateCheckOut ) {
		if (orderDetailRepository.sumQuantityByIdRoomAndDate(idRoom, dateCheckIn, dateCheckOut ) !=null) {
			return orderDetailRepository.sumQuantityByIdRoomAndDate(idRoom, dateCheckIn, dateCheckOut )  ;
		}
		long tem=0;
		return tem;
		
	}
	@Override
	public OrderDetail save(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		return orderDetailRepository.save(orderDetail);
	}
	@Override
	public OrderDetail findById(int id) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findById(id).get();
	}
	@Override
	public Iterable<OrderDetail> findAll() {
		// TODO Auto-generated method stub
		return orderDetailRepository.findAll();
	}
	@Override
	public List<OrderDetail> findByIdHotel(int idHotel) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findByIdHotel(idHotel);
	}

}
