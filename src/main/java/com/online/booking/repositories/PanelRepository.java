package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Panel;



@Repository("panelRepository")
public interface PanelRepository extends  CrudRepository<Panel,Integer>{

}
