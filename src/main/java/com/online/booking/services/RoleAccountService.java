package com.online.booking.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.RoleAccount;
import com.online.booking.repositories.RoleAccountRepository;

@Service("roleAccountService")
public class RoleAccountService implements IRoleAccountService {
@Autowired
private RoleAccountRepository roleAccountRepository;
	@Override
	public RoleAccount save(RoleAccount account) {
		
		return roleAccountRepository.save(account);
	}
	@Override
	public RoleAccount find(int id) {
		// TODO Auto-generated method stub
		return roleAccountRepository.findById(id).get();
	}

}
