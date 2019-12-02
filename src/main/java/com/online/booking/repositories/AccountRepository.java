/*package com.online.booking.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Account;

@Repository("accountRepository")
public interface AccountRepository extends  CrudRepository<Account,Integer>{
	
}
*/

package com.online.booking.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Account;
import com.online.booking.entities.UserGroup;

@Repository("accountRepository")
public interface AccountRepository extends  CrudRepository<Account,Integer>{
	@Query(value = "SELECT COUNT(account.id) FROM account,role_account WHERE account.id=role_account.account_id and role_account.role_id=:id and MONTH(account.created)=:month and YEAR(account.created)=:year",nativeQuery = true)
	public Long statisticalUser(@Param("id") Integer id, @Param("month") int month, @Param("year") int year);
	
	@Query(value = "SELECT * FROM account,role_account WHERE account.id=role_account.account_id and role_account.role_id=:id",nativeQuery = true)
	public List<Account> findAllEmployee(@Param("id") Integer id);
	
	@Query(value = "SELECT * FROM account,role_account WHERE account.id=role_account.account_id and role_account.role_id=:idemployee or role_account.role_id=:idadmin",nativeQuery = true)
	public List<Account> findAllAdminEmployee(@Param("idemployee") Integer idEmployee,@Param("idadmin") Integer idAdmin);
	
	
	@Query(value = "SELECT COUNT(account.id),Year(account.created) FROM account,role_account WHERE account.id=role_account.account_id and role_account.role_id=:id GROUP BY Year(account.created)",nativeQuery = true)
	public List<Long> statisticalUsers(@Param("id") Integer id);
	
/*	@Query("select new com.online.booking.entities.UserGroup(count(Account.id) as sumQuantity,"+
	"Year(Account.created) as year )"+
	"from Account,RoleAccount"+	
	"where Account.id=RoleAccount.account_id and RoleAccount.role_id=:id"+
	"GROUP BY Year(account.created)")
	
	public List<UserGroup> statisticalUserses(@Param("id") Integer id);*/
	//@Query("select new com.online.booking.entities.UserGroup(count(a.id) as sumQuantity,Year(a.created) as year ) from Account a,RoleAccount r	where a.id=r.account_id and r.role_id=:id GROUP BY Year(a.created)")
			
	@Query("select new com.online.booking.entities.UserGroup(count(a.id) as sumQuantity,year(a.created) as year ) from Account as a join a.roleAccounts ra join ra.role r where r.id=:id  group by year(a.created)")
			public List<UserGroup> statisticalUserses(@Param("id") Integer id);
	
}
