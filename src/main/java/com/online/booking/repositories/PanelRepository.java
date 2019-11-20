package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Panel;



@Repository("panelRepository")
public interface PanelRepository extends  CrudRepository<Panel,Integer>{
	@Query(value=" from Panel where status = true")
	public List<Panel> searchHeaderTrue();
}
