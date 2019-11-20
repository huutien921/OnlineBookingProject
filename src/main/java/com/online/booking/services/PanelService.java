package com.online.booking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Panel;
import com.online.booking.repositories.PanelRepository;

@Service("panelService")
public class PanelService implements IPanelService {
	@Autowired
	private PanelRepository panelRepository;
	@Override
	public Iterable<Panel> findAll() {
		return panelRepository.findAll();
	}

	@Override
	public Panel find(int id) {
		return panelRepository.findById(id).get();
	}

	@Override
	public Panel save(Panel panel) {
		return panelRepository.save(panel);
	}

	@Override
	public void delete(int id) {
		panelRepository.deleteById(id);
		
	}

	@Override
	public List<Panel> searchHeaderTrue() {
		return panelRepository.searchHeaderTrue();
	}
}
