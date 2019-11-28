package com.online.booking.entities;

public class CopponRoomEntity {
	private String roomName;
	private String discountName;
	private Double discountValue;
	private Boolean status;

	public CopponRoomEntity(String roomName, String discountName, Double discountValue, Boolean status) {
		super();
		this.roomName = roomName;
		this.discountName = discountName;
		this.discountValue = discountValue;
		this.status = status;
	}

	public CopponRoomEntity() {
		super();
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getDiscountName() {
		return discountName;
	}

	public void setDiscountName(String discountName) {
		this.discountName = discountName;
	}

	public Double getDiscountValue() {
		return discountValue;
	}

	public void setDiscountValue(Double discountValue) {
		this.discountValue = discountValue;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

}
