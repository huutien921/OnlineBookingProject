package com.online.booking.services;

import java.util.List;

import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.online.booking.entities.Account;
import com.online.booking.entities.UserGroup;

public interface IAccountService extends UserDetailsService {
	public Account findById(int id);

	public Iterable<Account> findAll();

	public Account find(int id);

	public Account save(Account account);

	public Long statisticalUser(Integer id, int month, int year);

	public List<Account> findAllEmployee(Integer id);

	public List<Account> findAllAdminEmployee(Integer idEmployee, Integer idAdmin);

	public List<Long> statisticalUsers(Integer id);

//public List<UserGroup> statisticalUserses(Integer id);
	public List<UserGroup> statisticalUserses(Integer id);

	public Account findByUsernameAndStatus(String username, boolean status);
	
	public Account findByUsername(String username);
}
