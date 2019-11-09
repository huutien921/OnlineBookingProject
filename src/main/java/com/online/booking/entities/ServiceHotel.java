package com.online.booking.entities;
// Generated Nov 1, 2019 4:41:20 PM by Hibernate Tools 5.1.10.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * ServiceHotel generated by hbm2java
 */
@Entity
@Table(name = "service_hotel")
public class ServiceHotel implements java.io.Serializable {

	private int id;
	private Hotel hotel;
	private Service service;
	private Date startDate;
	private Date endDate;
	private Date created;
	private long status;
	private Set<Payment> payments = new HashSet<Payment>(0);

	public ServiceHotel() {
	}

	public ServiceHotel(int id, Hotel hotel, Service service, Date startDate, Date endDate, Date created, long status) {
		this.id = id;
		this.hotel = hotel;
		this.service = service;
		this.startDate = startDate;
		this.endDate = endDate;
		this.created = created;
		this.status = status;
	}

	public ServiceHotel(int id, Hotel hotel, Service service, Date startDate, Date endDate, Date created, long status,
			Set<Payment> payments) {
		this.id = id;
		this.hotel = hotel;
		this.service = service;
		this.startDate = startDate;
		this.endDate = endDate;
		this.created = created;
		this.status = status;
		this.payments = payments;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_hotel", nullable = false)
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_service", nullable = false)
	public Service getService() {
		return this.service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "start_date", nullable = false, length = 10)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "end_date", nullable = false, length = 10)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "status", nullable = false)
	public long getStatus() {
		return this.status;
	}

	public void setStatus(long status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "serviceHotel")
	public Set<Payment> getPayments() {
		return this.payments;
	}

	public void setPayments(Set<Payment> payments) {
		this.payments = payments;
	}

}
