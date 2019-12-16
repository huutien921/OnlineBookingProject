package com.online.booking.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Orders;



@Repository("ordersRepository")
public interface OrdersRepository extends  CrudRepository<Orders,Integer>{
	@Query(value = "select * from orders where account_id = :acid and id = (SELECT MAX(id) FROM orders where account_id = :acid ) "
			+ "and created < :datenow" ,nativeQuery = true)
	public Orders findOrderNew(@Param("acid") int id , @Param("datenow") Date date);
	@Query(value = "from Orders where account.id = :idac")
	public List<Orders> findOrderByAccount(@Param("idac") int id);
}
