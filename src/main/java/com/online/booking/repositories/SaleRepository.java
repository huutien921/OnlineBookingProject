package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Sale;



@Repository("saleRepository")
public interface SaleRepository extends  CrudRepository<Sale,Integer>{

}
