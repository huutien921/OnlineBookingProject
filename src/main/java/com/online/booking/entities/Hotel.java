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

/**
 * HotelService generated by hbm2java
 */
@Entity
@Table(name = "hotel")
public class Hotel implements java.io.Serializable {

	private Integer id;
	private Account accountByIdAcEmployee;
	private Account accountByAccountId;
	private Hotel hotel;
	private StarRating starRating;
	private String addressFull;
	private String city;
	private String 	provincial;
	private String 	country;
	private String name;
	private String image;
	private String description;
	private Boolean wifi;
	private Boolean parking;
	private Boolean spa;
	private Boolean gym;
	private Boolean carRental;
	private Boolean airportTransfer;
	private Boolean freeBreakfast;
	private Boolean swimmingPool;
	private Boolean elevator;
	private Boolean receptionist;
	private Boolean airConditioner;
	private Boolean freeCancellation;
	private Boolean payAtHotel;
	private Boolean assemblyFacilites;
	private Boolean driveway;
	private Boolean status;
	private Set<Hotel> hotels = new HashSet<Hotel>(0);
	private Set<Room> rooms = new HashSet<Room>(0);
	private Set<ServiceHotel> serviceHotels = new HashSet<ServiceHotel>(0);
	private Set<Evaluate> evaluates = new HashSet<Evaluate>(0);

	public Hotel() {
	}

	public Hotel(Account accountByAccountId, StarRating starRating, boolean status) {
		this.accountByAccountId = accountByAccountId;
		this.starRating = starRating;
		this.status = status;
	}

	public Hotel(Integer id, Account accountByIdAcEmployee, Account accountByAccountId, Hotel hotel,
			StarRating starRating, String addressFull, String city, String provincial, String country, String name,
			String image, String description, Boolean wifi, Boolean parking, Boolean spa, Boolean gym,
			Boolean carRental, Boolean airportTransfer, Boolean freeBreakfast, Boolean swimmingPool, Boolean elevator,
			Boolean receptionist, Boolean airConditioner, Boolean freeCancellation, Boolean payAtHotel,
			Boolean assemblyFacilites, Boolean driveway, boolean status, Set<Hotel> hotels, Set<Room> rooms,
			Set<ServiceHotel> serviceHotels, Set<Evaluate> evaluates) {
		super();
		this.id = id;
		this.accountByIdAcEmployee = accountByIdAcEmployee;
		this.accountByAccountId = accountByAccountId;
		this.hotel = hotel;
		this.starRating = starRating;
		this.addressFull = addressFull;
		this.city = city;
		this.provincial = provincial;
		this.country = country;
		this.name = name;
		this.image = image;
		this.description = description;
		this.wifi = wifi;
		this.parking = parking;
		this.spa = spa;
		this.gym = gym;
		this.carRental = carRental;
		this.airportTransfer = airportTransfer;
		this.freeBreakfast = freeBreakfast;
		this.swimmingPool = swimmingPool;
		this.elevator = elevator;
		this.receptionist = receptionist;
		this.airConditioner = airConditioner;
		this.freeCancellation = freeCancellation;
		this.payAtHotel = payAtHotel;
		this.assemblyFacilites = assemblyFacilites;
		this.driveway = driveway;
		this.status = status;
		this.hotels = hotels;
		this.rooms = rooms;
		this.serviceHotels = serviceHotels;
		this.evaluates = evaluates;
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
	@JoinColumn(name = "id_ac_employee")
	public Account getAccountByIdAcEmployee() {
		return this.accountByIdAcEmployee;
	}

	public void setAccountByIdAcEmployee(Account accountByIdAcEmployee) {
		this.accountByIdAcEmployee = accountByIdAcEmployee;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "account_id", nullable = false)
	public Account getAccountByAccountId() {
		return this.accountByAccountId;
	}

	public void setAccountByAccountId(Account accountByAccountId) {
		this.accountByAccountId = accountByAccountId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_coppon_hotel")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "starrating_id", nullable = false)
	public StarRating getStarRating() {
		return this.starRating;
	}

	public void setStarRating(StarRating starRating) {
		this.starRating = starRating;
	}

	@Column(name = "name", length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "image", length = 50)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	@Column(name = "address_full", length = 500)
	public String getAddressFull() {
		return addressFull;
	}

	public void setAddressFull(String addressFull) {
		this.addressFull = addressFull;
	}
	@Column(name = "city", length = 250)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	@Column(name = "provincial", length = 250)
	public String getProvincial() {
		return provincial;
	}

	public void setProvincial(String provincial) {
		this.provincial = provincial;
	}
	@Column(name = "country", length = 250)
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "wifi")
	public Boolean getWifi() {
		return this.wifi;
	}

	public void setWifi(Boolean wifi) {
		this.wifi = wifi;
	}

	@Column(name = "parking")
	public Boolean getParking() {
		return this.parking;
	}

	public void setParking(Boolean parking) {
		this.parking = parking;
	}

	@Column(name = "spa")
	public Boolean getSpa() {
		return this.spa;
	}

	public void setSpa(Boolean spa) {
		this.spa = spa;
	}

	@Column(name = "gym")
	public Boolean getGym() {
		return this.gym;
	}

	public void setGym(Boolean gym) {
		this.gym = gym;
	}

	@Column(name = "car_rental")
	public Boolean getCarRental() {
		return this.carRental;
	}

	public void setCarRental(Boolean carRental) {
		this.carRental = carRental;
	}

	@Column(name = "airport_transfer")
	public Boolean getAirportTransfer() {
		return this.airportTransfer;
	}

	public void setAirportTransfer(Boolean airportTransfer) {
		this.airportTransfer = airportTransfer;
	}

	@Column(name = "free_breakfast")
	public Boolean getFreeBreakfast() {
		return this.freeBreakfast;
	}

	public void setFreeBreakfast(Boolean freeBreakfast) {
		this.freeBreakfast = freeBreakfast;
	}

	@Column(name = "swimming_pool")
	public Boolean getSwimmingPool() {
		return this.swimmingPool;
	}

	public void setSwimmingPool(Boolean swimmingPool) {
		this.swimmingPool = swimmingPool;
	}

	@Column(name = "elevator")
	public Boolean getElevator() {
		return this.elevator;
	}

	public void setElevator(Boolean elevator) {
		this.elevator = elevator;
	}

	@Column(name = "receptionist")
	public Boolean getReceptionist() {
		return this.receptionist;
	}

	public void setReceptionist(Boolean receptionist) {
		this.receptionist = receptionist;
	}

	@Column(name = "air_conditioner")
	public Boolean getAirConditioner() {
		return this.airConditioner;
	}

	public void setAirConditioner(Boolean airConditioner) {
		this.airConditioner = airConditioner;
	}

	@Column(name = "free_cancellation")
	public Boolean getFreeCancellation() {
		return this.freeCancellation;
	}

	public void setFreeCancellation(Boolean freeCancellation) {
		this.freeCancellation = freeCancellation;
	}

	@Column(name = "pay_at_hotel")
	public Boolean getPayAtHotel() {
		return this.payAtHotel;
	}

	public void setPayAtHotel(Boolean payAtHotel) {
		this.payAtHotel = payAtHotel;
	}

	@Column(name = "assembly_facilites")
	public Boolean getAssemblyFacilites() {
		return this.assemblyFacilites;
	}

	public void setAssemblyFacilites(Boolean assemblyFacilites) {
		this.assemblyFacilites = assemblyFacilites;
	}

	@Column(name = "driveway")
	public Boolean getDriveway() {
		return this.driveway;
	}

	public void setDriveway(Boolean driveway) {
		this.driveway = driveway;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Hotel> getHotels() {
		return this.hotels;
	}

	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Room> getRooms() {
		return this.rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<ServiceHotel> getServiceHotels() {
		return this.serviceHotels;
	}

	public void setServiceHotels(Set<ServiceHotel> serviceHotels) {
		this.serviceHotels = serviceHotels;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Evaluate> getEvaluates() {
		return this.evaluates;
	}

	public void setEvaluates(Set<Evaluate> evaluates) {
		this.evaluates = evaluates;
	}

}
