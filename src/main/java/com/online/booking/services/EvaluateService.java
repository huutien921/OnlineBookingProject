package com.online.booking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Evaluate;
import com.online.booking.repositories.EvaluateRepository;

@Service("evaluateService")
public class EvaluateService implements IEvaluateService {
	@Autowired
	private EvaluateRepository evaluateRepository;

	@Override
	public List<Evaluate> findByHotel(int id) {
		// TODO Auto-generated method stub
		return evaluateRepository.findByHotel(id);
	}

	@Override
	public List<Evaluate> findByRoom(int id) {
		// TODO Auto-generated method stub
		return evaluateRepository.findByRoom(id);
	}

	@Override
	public List<Evaluate> findByHotelDescAndLimit(int id, int n) {
		// TODO Auto-generated method stub
		return evaluateRepository.findByHotelDescAndLimit(id, n);
	}

	@Override
	public List<Evaluate> findByRoomDescAndLimit(int id, int n) {
		// TODO Auto-generated method stub
		return evaluateRepository.findByRoomDescAndLimit(id, n);
	}

	@Override
	public Evaluate findById(int id) {
		// TODO Auto-generated method stub
		return evaluateRepository.findById(id).get();
	}

}
