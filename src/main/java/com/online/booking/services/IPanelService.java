package com.online.booking.services;

import java.util.List;

import com.online.booking.entities.Panel;

public interface IPanelService {
	public Iterable<Panel> findAll();

	public Panel find(int id);

	public Panel save(Panel panel);
	
	public void delete(int id);
	
	public List<Panel> searchHeaderTrue();
	
}
