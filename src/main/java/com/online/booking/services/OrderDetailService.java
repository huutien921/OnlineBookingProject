package com.online.booking.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

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
	@Override
	public List<OrderDetail> findByAccountAndcheckInOut(int id, Date now) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findByAccountAndcheckInOut(id, now);
	}
	@Override
	public List<OrderDetail> findByHistory(int id, Date now) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findByHistory(id, now);
	}
	@Override
	public List<OrderDetail> findCustomerNow(int id, Date now, boolean stt) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findCustomerNow(id, now, stt);
	}
	@Override
	public List<OrderDetail> findHistoryAllOrderDetail(int hotelid, Date now, boolean stt) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findHistoryAllOrderDetail(hotelid, now, stt);
	}
	@Override
	public List<OrderDetail> findBookingReservesint(int hotelid, Date now, boolean stt) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findBookingReserves(hotelid, now, stt);
	}
	@Override
	public List<OrderDetail> findBookingCheckInIsNow(int hotelid, Date now, boolean stt) {
		List<OrderDetail> orderDetails = findBookingReservesint(hotelid, now, stt);
		List<OrderDetail> orderResult   = new ArrayList<OrderDetail>();
		
		for (OrderDetail orderDetail : orderDetails) {
			long getDiff = orderDetail.getCheckInDate().getTime() - now.getTime();
			long getDayDiff = TimeUnit.MILLISECONDS.toDays(getDiff);
			System.out.println("ngay" + getDayDiff);
			System.out.println("=====");
			if (getDayDiff == 0 && orderDetail.getOrders().isStatus() == false) {
				orderResult.add(orderDetail);
			}
		}
		return orderResult;
	}
	

}
