package com.online.booking.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.OrderDetail;

import javassist.expr.NewArray;

@Repository("orderDetailRepository")
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {
	@Query("from OrderDetail where room.id =:roomId")
	public List<OrderDetail> findByIdRoom(@Param("roomId") int idRoom);
	//Sum soluong phong theo id va thoi gian
	@Query(value = "select sum(quantity) from order_detail where"
			+ "(( check_in_date < :vao and check_out_date > :vao ) or ( check_in_date < :ra and :ra < check_out_date) or "
			+ "(( :vao < check_in_date ) and ( :ra > check_out_date )))"
			+ " and room_id = :roomId ", nativeQuery = true)
	public Long sumQuantityByIdRoomAndDate(@Param("roomId") int idRoom 
	,@Param("vao") Date dateCheckIn,@Param("ra") Date dateCheckOut );
	@Query("from OrderDetail where room.id =:hotelid")
	public List<OrderDetail> findByIdHotel(@Param("hotelid") int idhotel);
	@Query("from OrderDetail where orders.account.id = :id and checkOutDate > :now order by id desc ")
	public List<OrderDetail> findByAccountAndcheckInOut(@Param("id") int id, @Param("now") Date now);
	@Query("from OrderDetail where orders.account.id = :id and checkOutDate < :now order by id desc ")
	public List<OrderDetail> findByHistory(@Param("id") int id, @Param("now") Date now);
	@Query("from OrderDetail where room.id = :idroom and checkInDate <= :now and checkOutDate >= :now and orders.status = :stt ")
	public List<OrderDetail> findCustomerNow(@Param("idroom") int id , @Param("now") Date now , @Param("stt") boolean stt);
	@Query("from OrderDetail where room.hotel.id = :hotelid and checkOutDate < :now and orders.status = :stt ")
	public List<OrderDetail> findHistoryAllOrderDetail(@Param("hotelid") int hotelid , @Param("now") Date now , @Param("stt") boolean stt);
	@Query("from OrderDetail where room.hotel.id = :hotelid and checkInDate >= :now and orders.status = :stt ")
	public List<OrderDetail> findBookingReserves(@Param("hotelid") int hotelid , @Param("now") Date now , @Param("stt") boolean stt);

	
}
