package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Service;
import com.online.booking.entities.ServiceGroup;




@Repository("serviceRepository")
public interface ServiceRepository extends  CrudRepository<Service,Integer>{
@Query(value = "from Service where servicetype.id = :id ")
	public List<Service> findByTypeService(@Param("id") int id);
	

//@Query("select new com.online.booking.entities.ServiceGroup(sum(a.price) as sumService,month(ra.created) as month ) from Service as a join a.serviceHotels ra where  year(ra.created)='2019'  group by month(ra.created)")
//public List<ServiceGroup> statisticalService();
@Query("select new com.online.booking.entities.ServiceGroup(sum(ra.tatol) as sumService,month(ra.created) as month ) from ServiceHotel as ra where  year(ra.created)='2019'  group by month(ra.created)")
public List<ServiceGroup> statisticalService();

@Query("select new com.online.booking.entities.ServiceGroup(month(ra.created) as month,count(a.id) as amount ) from Service as a join a.serviceHotels ra where  year(ra.created)='2019'  group by month(ra.created)")
public List<ServiceGroup> countService();

//@Query("select new com.online.booking.entities.ServiceGroup(month(ra.created) as month,count(ht.id) as amount ) from serviceHotels ra join ra.hotel ht where  year(ra.created)='2019'  group by month(ra.created)")
//public List<ServiceGroup> countHotel();

}
