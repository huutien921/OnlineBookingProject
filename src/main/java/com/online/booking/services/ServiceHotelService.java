package com.online.booking.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.ServiceHotel;
import com.online.booking.repositories.ServiceHotelRepository;


@Service("serviceHotelService")
public class ServiceHotelService implements IServiceHotelService {
	@Autowired
	private ServiceHotelRepository serviceHotelRepository;

	@Override
	public List<ServiceHotel> findByIdActive(Date today, int id, boolean stt) {

		return serviceHotelRepository.findByIdActive(today, id, stt);
	}

	@Override
	public int getPriorityMax(Date today, int id, boolean stt) {
		int prioriti = 0;
		if (!findByIdActive(today, id, stt).isEmpty()) {
			for (ServiceHotel serviceHotel : findByIdActive(today, id, stt)) {
				if (serviceHotel.getService().getPriority() > prioriti) {

					prioriti = serviceHotel.getService().getPriority();
				}
		}
		
		}
		return prioriti;
	}

}
