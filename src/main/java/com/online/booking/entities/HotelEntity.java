package com.online.booking.entities;

public class HotelEntity {
	private int id;
	private String name;
	private int starRatingNum;
	private String image;
	private String ward;
	private String city;
	private Double priceCoppon;
	private Double price;
	private boolean prestige;
	private int comment;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStarRatingNum() {
		return starRatingNum;
	}

	public void setStarRatingNum(int starRatingNum) {
		this.starRatingNum = starRatingNum;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Double getPriceCoppon() {
		return priceCoppon;
	}

	public void setPriceCoppon(Double priceCoppon) {
		this.priceCoppon = priceCoppon;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public boolean isPrestige() {
		return prestige;
	}

	public void setPrestige(boolean prestige) {
		this.prestige = prestige;
	}

	public int getComment() {
		return comment;
	}

	public void setComment(int comment) {
		this.comment = comment;
	}

	public HotelEntity(int id, String name, int starRatingNum, String image, String ward, String city,
			Double priceCoppon, Double price, boolean prestige, int comment) {
		super();
		this.id = id;
		this.name = name;
		this.starRatingNum = starRatingNum;
		this.image = image;
		this.ward = ward;
		this.city = city;
		this.priceCoppon = priceCoppon;
		this.price = price;
		this.prestige = prestige;
		this.comment = comment;
	}

	public HotelEntity() {
		super();
	}

}
