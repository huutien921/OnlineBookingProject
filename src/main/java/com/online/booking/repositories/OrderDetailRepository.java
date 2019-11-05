package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.OrderDetail;

@Repository("orderDetailRepository")
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {
	@Query("from OrderDetail where idRoom =:roomId")
	public List<OrderDetail> findByIdRoom(@Param("roomId") int idRoom);
	// tinh tong cac so luong khong thoa dk
	
	@Query("select ")
	public long sumQuantityByIdRoomAndDate();
}
