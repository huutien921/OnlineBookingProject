package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Account;

@Repository("accountRepository")
public interface AccountRepository extends  CrudRepository<Account,Integer>{
	
}
