package com.online.booking.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.OrderDetail;

import javassist.expr.NewArray;

@Repository("orderDetailRepository")
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {
	@Query("from OrderDetail where room.id =:roomId")
	public List<OrderDetail> findByIdRoom(@Param("roomId") int idRoom);
	//Sum soluong phong theo id va thoi gian
	@Query(value = "select sum(quantity) from order_detail where"
			+ "( check_in_date < :vao and check_out_date > :vao ) or ( check_in_date < :ra and :ra < check_out_date) or "
			+ "(( :vao < check_in_date ) and ( :ra > check_out_date ))"
			+ " and room_id =:roomId ", nativeQuery = true)
	public Long sumQuantityByIdRoomAndDate(@Param("roomId") int idRoom 
	,@Param("vao") Date dateCheckIn,@Param("ra") Date dateCheckOut );
	@Query("from OrderDetail where room.id =:hotelid")
	public List<OrderDetail> findByIdHotel(@Param("hotelid") int idhotel);
}
