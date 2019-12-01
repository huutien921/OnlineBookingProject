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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * Room generated by hbm2java
 */
@Entity
@Table(name = "room")
public class Room implements java.io.Serializable {

	private Integer id;
	@JsonIgnore
	private BedType bedType;
	@JsonIgnore
	private CopponRoom copponRoom;
	@JsonIgnore
	private Hotel hotel;
	@JsonIgnore
	private RoomCategory roomCategory;
	@JsonIgnore
	private RoomType roomType;
	@NotEmpty
	private String name;
	
	private String srcIcon;
	@NotNull
	@Min(1)
	@Max(100)
	private Double price;
	private Integer amountOfBed;
	private Integer capacity;
	private Integer amountOfRoom;
	private boolean status;
	@JsonIgnore
	private Set<Evaluate> evaluates = new HashSet<Evaluate>(0);
	@JsonIgnore
	private Set<ImageRoom> imageRooms = new HashSet<ImageRoom>(0);
	@JsonIgnore
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);
	@JsonIgnore
	private Set<Report> reports = new HashSet<Report>(0);

	public Room() {
	}

	public Room(BedType bedType, Hotel hotel, RoomCategory roomCategory, RoomType roomType, boolean status) {
		this.bedType = bedType;
		this.hotel = hotel;
		this.roomCategory = roomCategory;
		this.roomType = roomType;
		this.status = status;
	}

	public Room(Integer id) {
		super();
		this.id = id;
	}

	public Room(BedType bedType, CopponRoom copponRoom, Hotel hotel, RoomCategory roomCategory, RoomType roomType,
			String name, String srcIcon, Double price, Integer amountOfBed, Integer capacity, Integer amountOfRoom,
			boolean status, Set<Evaluate> evaluates, Set<ImageRoom> imageRooms, Set<OrderDetail> orderDetails,
			Set<Report> reports) {
		this.bedType = bedType;
		this.copponRoom = copponRoom;
		this.hotel = hotel;
		this.roomCategory = roomCategory;
		this.roomType = roomType;
		this.name = name;
		this.srcIcon = srcIcon;
		this.price = price;
		this.amountOfBed = amountOfBed;
		this.capacity = capacity;
		this.amountOfRoom = amountOfRoom;
		this.status = status;
		this.evaluates = evaluates;
		this.imageRooms = imageRooms;
		this.orderDetails = orderDetails;
		this.reports = reports;
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
	@JoinColumn(name = "bedtype_id", nullable = false)
	public BedType getBedType() {
		return this.bedType;
	}

	public void setBedType(BedType bedType) {
		this.bedType = bedType;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_coppon_room")
	public CopponRoom getCopponRoom() {
		return this.copponRoom;
	}

	public void setCopponRoom(CopponRoom copponRoom) {
		this.copponRoom = copponRoom;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hotel_id", nullable = false)
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "roomcategory_id", nullable = false)
	public RoomCategory getRoomCategory() {
		return this.roomCategory;
	}

	public void setRoomCategory(RoomCategory roomCategory) {
		this.roomCategory = roomCategory;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "roomtype_id", nullable = false)
	public RoomType getRoomType() {
		return this.roomType;
	}

	public void setRoomType(RoomType roomType) {
		this.roomType = roomType;
	}

	@Column(name = "name", length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "src_icon", length = 50)
	public String getSrcIcon() {
		return this.srcIcon;
	}

	public void setSrcIcon(String srcIcon) {
		this.srcIcon = srcIcon;
	}

	@Column(name = "price", precision = 22, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "amount_of_bed")
	public Integer getAmountOfBed() {
		return this.amountOfBed;
	}

	public void setAmountOfBed(Integer amountOfBed) {
		this.amountOfBed = amountOfBed;
	}

	@Column(name = "capacity")
	public Integer getCapacity() {
		return this.capacity;
	}

	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}

	@Column(name = "amount_of_room")
	public Integer getAmountOfRoom() {
		return this.amountOfRoom;
	}

	public void setAmountOfRoom(Integer amountOfRoom) {
		this.amountOfRoom = amountOfRoom;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "room")
	public Set<Evaluate> getEvaluates() {
		return this.evaluates;
	}

	public void setEvaluates(Set<Evaluate> evaluates) {
		this.evaluates = evaluates;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "room")
	public Set<ImageRoom> getImageRooms() {
		return this.imageRooms;
	}

	public void setImageRooms(Set<ImageRoom> imageRooms) {
		this.imageRooms = imageRooms;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "room")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "room")
	public Set<Report> getReports() {
		return this.reports;
	}

	public void setReports(Set<Report> reports) {
		this.reports = reports;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", bedType=" + bedType + ", copponRoom=" + copponRoom + ", hotel=" + hotel
				+ ", roomCategory=" + roomCategory + ", roomType=" + roomType + ", name=" + name + ", srcIcon="
				+ srcIcon + ", price=" + price + ", amountOfBed=" + amountOfBed + ", capacity=" + capacity
				+ ", amountOfRoom=" + amountOfRoom + ", status=" + status + ", evaluates=" + evaluates + ", imageRooms="
				+ imageRooms + ", orderDetails=" + orderDetails + ", reports=" + reports + "]";
	}
	

}
