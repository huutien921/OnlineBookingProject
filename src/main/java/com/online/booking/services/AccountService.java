package com.online.booking.services;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Account;
import com.online.booking.repositories.AccountRepository;
import com.online.booking.entities.UserGroup;
@Service("accountService")
public class AccountService implements IAccountService {
	@Autowired
	private AccountRepository accountRepository;

	@Override
	public Account findById(int id) {
		// TODO Auto-generated method stub
		return accountRepository.findById(id).get();
	}

	@Override
	public Iterable<Account> findAll() {
		
		return accountRepository.findAll();
	}
	@Override
	public Account save(Account account) {
		// TODO Auto-generated method stub
		return accountRepository.save(account);
	}
	@Override
	public Account find(int id) {
		// TODO Auto-generated method stub
		return accountRepository.findById(id).get();
	}
	@Override
	public Long statisticalUser(Integer id,int month, int year) {
		// TODO Auto-generated method stub
		return accountRepository.statisticalUser(id,month, year);
	}
	@Override
	public List<Account> findAllEmployee(Integer id) {
		// TODO Auto-generated method stub
		return accountRepository.findAllEmployee(id);
	}
	@Override
	public List<Account> findAllAdminEmployee(Integer idEmployee, Integer idAdmin) {
		// TODO Auto-generated method stub
		return accountRepository.findAllAdminEmployee(idEmployee, idAdmin);
	}
	@Override
	public List<Long> statisticalUsers(Integer id) {
		// TODO Auto-generated method stub
		return accountRepository.statisticalUsers(id);
	}
	/*@Override
	public List<UserGroup> statisticalUserses(Integer id) {
		// TODO Auto-generated method stub
		return accountRepository.statisticalUserses(id);
	}*/
	@Override
	public List<UserGroup> statisticalUserses(Integer id) {
		// TODO Auto-generated method stub
		return accountRepository.statisticalUserses(id);
	}
}
