package com.online.booking.entities;
// Generated Nov 1, 2019 4:41:20 PM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name = "orders")
public class Orders implements java.io.Serializable {

	private Integer id;
	private Account account;
	private Sale sale;
	private Date created;
	private boolean status;
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);
	private Set<Payment> payments = new HashSet<Payment>(0);

	public Orders() {
	}

	public Orders(Account account, Sale sale, boolean status) {
		this.account = account;
		this.sale = sale;
		this.status = status;
	}

	public Orders(Account account, Sale sale, Date created, boolean status, Set<OrderDetail> orderDetails,
			Set<Payment> payments) {
		this.account = account;
		this.sale = sale;
		this.created = created;
		this.status = status;
		this.orderDetails = orderDetails;
		this.payments = payments;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "account_id", nullable = false)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "sale_id", nullable = false)
	public Sale getSale() {
		return this.sale;
	}

	public void setSale(Sale sale) {
		this.sale = sale;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orders")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orders")
	public Set<Payment> getPayments() {
		return this.payments;
	}

	public void setPayments(Set<Payment> payments) {
		this.payments = payments;
	}

}
