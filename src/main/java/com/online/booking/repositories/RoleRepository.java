package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Role;



@Repository("roleRepository")
public interface RoleRepository extends  CrudRepository<Role,Integer>{

}
