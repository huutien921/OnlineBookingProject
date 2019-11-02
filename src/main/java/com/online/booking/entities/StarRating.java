package com.online.booking.entities;
// Generated Nov 1, 2019 4:41:20 PM by Hibernate Tools 5.1.10.Final

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

/**
 * StarRating generated by hbm2java
 */
@Entity
@Table(name = "star_rating")
public class StarRating implements java.io.Serializable {

	private Integer id;
	private Integer amount;
	private Set<Hotel> hotels = new HashSet<Hotel>(0);

	public StarRating() {
	}

	public StarRating(Integer amount, Set<Hotel> hotels) {
		this.amount = amount;
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

	@Column(name = "amount")
	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "starRating")
	public Set<Hotel> getHotels() {
		return this.hotels;
	}

	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}

}
