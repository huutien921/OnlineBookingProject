package com.online.booking.services;
import java.util.List;
import com.online.booking.entities.Account;
import com.online.booking.entities.UserGroup;
public interface IAccountService {
public Account findById(int id);	
public Iterable<Account> findAll();
public Account find(int id);
public Account save(Account account);
public Long statisticalUser(Integer id,int month,int year);
public List<Account> findAllEmployee(Integer id);
public List<Account> findAllAdminEmployee(Integer idEmployee,Integer idAdmin);
public List<Long> statisticalUsers(Integer id);
//public List<UserGroup> statisticalUserses(Integer id);
public List<UserGroup> statisticalUserses(Integer id);
	
}
