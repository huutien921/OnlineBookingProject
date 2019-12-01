package com.online.booking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Blog;
import com.online.booking.repositories.BlogRepository;

@Service("blogService")
public class BlogService implements IBlogService {
	@Autowired
	private BlogRepository blogRepository;
	@Override
	public Iterable<Blog> findAll() {
		return blogRepository.findAll();
	}

	@Override
	public Blog find(int id) {
		return blogRepository.findById(id).get();
	}

	@Override
	public Blog save(Blog blog) {
		return blogRepository.save(blog);
	}

	@Override
	public void delete(int id) {
		blogRepository.deleteById(id);
		
	}

	@Override
	public List<Blog> searchBlogByStatus(boolean status) {
		return blogRepository.searchBlogByStatus(status);
	}

	@Override
	public List<Blog> searchLimitBlog(boolean status, int n) {
		return blogRepository.searchLimitBlog(status, n);
	}



}
