package com.online.booking.services;

import java.util.List;


import com.online.booking.entities.Evaluate;

public interface IEvaluateService {
	public List<Evaluate> findByHotel(int id);

	public List<Evaluate> findByRoom(int id);

	public List<Evaluate> findByHotelDescAndLimit(int id, int n);

	public List<Evaluate> findByRoomDescAndLimit(int id, int n);
	public Evaluate findById(int id);

}
