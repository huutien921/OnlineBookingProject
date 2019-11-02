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
 * BedType generated by hbm2java
 */
@Entity
@Table(name = "bed_type")
public class BedType implements java.io.Serializable {

	private Integer id;
	private String name;
	private boolean status;
	private Set<Room> rooms = new HashSet<Room>(0);

	public BedType() {
	}

	public BedType(boolean status) {
		this.status = status;
	}

	public BedType(String name, boolean status, Set<Room> rooms) {
		this.name = name;
		this.status = status;
		this.rooms = rooms;
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

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bedType")
	public Set<Room> getRooms() {
		return this.rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

}
