package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.BedType;
import com.online.booking.repositories.BedTypeRepository;

@Service("bedTypeService")
public class BedTypeService implements IBedTypeService {
@Autowired
private BedTypeRepository bedTypeRepository; 
	@Override
	public Iterable<BedType> findAll() {
		
		return bedTypeRepository.findAll();
	}

}
