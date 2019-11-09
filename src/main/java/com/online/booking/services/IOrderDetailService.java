package com.online.booking.services;

import java.util.Date;
import java.util.List;

import com.online.booking.entities.OrderDetail;

public interface IOrderDetailService {
	public List<OrderDetail> findByIdRoom(int idRoom);
	public Long sumQuantityByIdRoomAndDate(int idRoom, Date dateCheckIn, Date dateCheckOut );
	
}
