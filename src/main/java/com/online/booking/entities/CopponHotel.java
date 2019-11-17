package com.online.booking.entities;
// Generated Nov 8, 2019 11:57:35 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * CopponHotel generated by hbm2java
 */
@Entity
@Table(name = "coppon_hotel")
public class CopponHotel implements java.io.Serializable {

	private Integer id;
	private String name;
	private Double sale;
	private boolean status;
	@JsonBackReference
	private Set<Hotel> hotels = new HashSet<Hotel>(0);

	public CopponHotel() {
	}

	public CopponHotel(String name, boolean status) {
		this.name = name;
		this.status = status;
	}

	public CopponHotel(String name, Double sale, boolean status, Set<Hotel> hotels) {
		this.name = name;
		this.sale = sale;
		this.status = status;
		this.hotels = hotels;
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

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "sale", precision = 22, scale = 0)
	public Double getSale() {
		return this.sale;
	}

	public void setSale(Double sale) {
		this.sale = sale;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "copponHotel")
	public Set<Hotel> getHotels() {
		return this.hotels;
	}

	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}

}
