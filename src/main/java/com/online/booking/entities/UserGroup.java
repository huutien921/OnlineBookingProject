package com.online.booking.entities;



public class UserGroup {
	

	private int year;
	private Long sumQuantity;
	
	
	
	public UserGroup() {
		super();
	}





	public UserGroup(Long sumQuantity,int year) {
		super();
		
		this.sumQuantity = sumQuantity;
		this.year = year;
	}










	public int getYear() {
		return year;
	}



	public void setYear(int year) {
		this.year = year;
	}



	public Long getSumQuantity() {
		return sumQuantity;
	}



	public void setSumQuantity(Long sumQuantity) {
		this.sumQuantity = sumQuantity;
	}





	@Override
	public String toString() {
		return "UserGroup [year=" + year + ", sumQuantity=" + sumQuantity + "]";
	}
	
	
	
	
}
