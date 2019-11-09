package com.online.booking.services;


import java.util.Date;
import java.util.List;

import com.online.booking.entities.ServiceHotel;

public interface IServiceHotelService {
	public List<ServiceHotel> findByIdActive( Date today,int id,boolean stt);
	public int getPriorityMax(Date today,int id,boolean stt);

}
