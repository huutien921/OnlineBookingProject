package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Evaluate;



@Repository("evaluateRepository")
public interface EvaluateRepository extends  CrudRepository<Evaluate,Integer>{

}
