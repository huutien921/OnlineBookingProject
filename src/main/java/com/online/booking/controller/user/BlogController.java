package com.online.booking.controller.user;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Blog;
import com.online.booking.services.BlogService;

@Controller
@RequestMapping("blog")
public class BlogController {
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		List<Blog> blogs = blogService.searchBlogByStatus(true);
		
		modelMap.put("blogs", blogs);
		return "blog.index";
	}
	
	@RequestMapping(value = "blog_detail" ,method = RequestMethod.GET)
	public String blog_detail(ModelMap modelMap) {
		
		return "blog.blog_detail";
	}
}
