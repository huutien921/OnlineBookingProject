package com.online.booking.entities;

public class ImageRoomEntity {
	private String src;
	private boolean type;
	private String alt;

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public boolean isType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public ImageRoomEntity() {
		super();
	}

}
