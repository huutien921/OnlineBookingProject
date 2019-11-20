package com.online.booking.services;

import java.util.List;

import com.online.booking.entities.Blog;

public interface IBlogService {
	public Iterable<Blog> findAll();

	public Blog find(int id);

	public Blog save(Blog blog);
	
	public void delete(int id);
	
	public List<Blog> searchBlogByStatus(boolean status);
	
}
