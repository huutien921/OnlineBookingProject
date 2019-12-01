package com.online.booking.entities;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "about")
public class About implements java.io.Serializable {
	private Integer id;
	private String address;
	private String country;
	private String email;
	private String phone;
	private String name;
	private boolean status;
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "address", unique = true, nullable = false, length = 250)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name = "country", unique = true, nullable = false, length = 250)
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Column(name = "email", unique = true, nullable = false, length = 50)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "phone", unique = true, nullable = false, length = 50)
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(name = "name", unique = true, nullable = false, length = 250)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	public About() {
		super();
	}
	public About(Integer id, String address, String country, String email, String phone, String name, boolean status) {
		super();
		this.id = id;
		this.address = address;
		this.country = country;
		this.email = email;
		this.phone = phone;
		this.name = name;
		this.status = status;
	}

}
