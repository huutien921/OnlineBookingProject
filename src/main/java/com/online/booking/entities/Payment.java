package com.online.booking.entities;
// Generated Oct 30, 2019 11:24:01 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Payment generated by hbm2java
 */
@Entity
@Table(name = "payment", catalog = "bookinghotel")
public class Payment implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String paymentcode;
	private boolean status;
	private Set<Orders> orderses = new HashSet<Orders>(0);

	public Payment() {
	}

	public Payment(boolean status) {
		this.status = status;
	}

	public Payment(String name, String paymentcode, boolean status, Set<Orders> orderses) {
		this.name = name;
		this.paymentcode = paymentcode;
		this.status = status;
		this.orderses = orderses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "paymentcode", length = 250)
	public String getPaymentcode() {
		return this.paymentcode;
	}

	public void setPaymentcode(String paymentcode) {
		this.paymentcode = paymentcode;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "payment")
	public Set<Orders> getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set<Orders> orderses) {
		this.orderses = orderses;
	}

}