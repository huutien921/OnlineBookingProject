package com.online.booking.services;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


import com.online.booking.entities.Account;

import com.online.booking.entities.Role;
import com.online.booking.entities.RoleAccount;
import com.online.booking.repositories.AccountRepository;

import com.online.booking.entities.UserGroup;
import com.online.booking.repositories.AccountRepository;

@Service("accountService")
public class AccountService implements IAccountService{
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

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountRepository.findByUsernameAndStatus(username, true);
		if(account == null) {
			throw new UsernameNotFoundException("Username not found");
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
		//lay tu entities
		for(RoleAccount roleAccount : account.getRoleAccounts()) {
			//lay ra name cua role trong tai khoan vua dang nhap
			grantedAuthorities.add(new SimpleGrantedAuthority(roleAccount.getRole().getName()));
		}
		return new User(username, account.getPassword(), grantedAuthorities);
	}

	@Override
	public Account findByUsernameAndStatus(String username, boolean status) {
		
		return accountRepository.findByUsernameAndStatus(username, status);
	}

	@Override
	public Account findByUsername(String username) {
		return accountRepository.findByUsername(username);
	}
}
