package com.online.booking.entities;

public class ServiceGroup {

	private long sumPrice;

	private int month;

	private long amount;
	
	public ServiceGroup() {
		super();
	}

	

	public ServiceGroup(int month, long amount) {
		super();
		this.month = month;
		this.amount = amount;
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



	public long getAmount() {
		return amount;
	}



	public void setAmount(long amount) {
		this.amount = amount;
	}

}
