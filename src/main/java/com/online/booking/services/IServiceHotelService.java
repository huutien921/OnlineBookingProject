package com.online.booking.services;


import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.online.booking.entities.ServiceHotel;

public interface IServiceHotelService {
	public List<ServiceHotel> findByIdActive( Date today,int id,boolean stt);
	public int getPriorityMax(Date today,int id,boolean stt);
	public ServiceHotel save(ServiceHotel serviceHotel);
	public ServiceHotel findByServiceCreate(int id ,int idService,
			boolean stt
			);

}
