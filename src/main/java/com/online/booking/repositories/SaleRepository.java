package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Room;
import com.online.booking.entities.Sale;



@Repository("saleRepository")
public interface SaleRepository extends  CrudRepository<Sale,Integer>{
	@Query(value="from Sale where status = :status order by id desc")
	public List<Sale> searchSaleByStatus(@Param("status") boolean status);
	
	@Query(value="select * from Sale where status = :status order by id desc limit :n ", nativeQuery = true)
	public List<Sale> searchLimitSale(@Param("status") boolean status, @Param("n") int n);
}
