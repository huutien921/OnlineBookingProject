package com.online.booking.entities;
// Generated Oct 30, 2019 11:24:01 AM by Hibernate Tools 5.1.10.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Imageblog generated by hbm2java
 */
@Entity
@Table(name = "imageblog")
public class Imageblog implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Blog blog;
	private String name;
	private boolean status;

	public Imageblog() {
	}

	public Imageblog(Blog blog, boolean status) {
		this.blog = blog;
		this.status = status;
	}

	public Imageblog(Blog blog, String name, boolean status) {
		this.blog = blog;
		this.name = name;
		this.status = status;
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
	@JoinColumn(name = "blog_id", nullable = false)
	public Blog getBlog() {
		return this.blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
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

}