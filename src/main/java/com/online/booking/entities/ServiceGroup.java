package com.online.booking.entities;

public class ServiceGroup {

	private long sumPrice;

	private int month;

	public ServiceGroup() {
		super();
	}

	public ServiceGroup(long sumPrice, int month) {
		super();
		this.sumPrice = sumPrice;
		this.month = month;
	}

	public double getSumPrice() {
		return sumPrice;
	}

	public void setSumPrice(long sumPrice) {
		this.sumPrice = sumPrice;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

}
