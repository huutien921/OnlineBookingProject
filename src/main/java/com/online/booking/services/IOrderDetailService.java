package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.OrderDetail;

public interface IOrderDetailService {
	public List<OrderDetail> findByIdRoom(int idRoom);
	public Long sumQuantityByIdRoomAndDate(int idRoom, Date dateCheckIn, Date dateCheckOut );
	public OrderDetail save(OrderDetail orderDetail);
	public OrderDetail findById(int id);
	public Iterable<OrderDetail> findAll();
	public List<OrderDetail> findByIdHotel(int idHotel);
	public List<OrderDetail> findByAccountAndcheckInOut(int id,Date now);
	public List<OrderDetail> findByHistory(int id,Date now);
	public List<OrderDetail> findCustomerNow( int id , Date now ,boolean stt);
	public List<OrderDetail> findHistoryAllOrderDetail( int hotelid , Date now , boolean stt);
	public List<OrderDetail> findBookingReservesint ( int  hotelid , Date now ,boolean stt);
	public List<OrderDetail> findBookingCheckInIsNow ( int  hotelid , Date now ,boolean stt);
	
}
