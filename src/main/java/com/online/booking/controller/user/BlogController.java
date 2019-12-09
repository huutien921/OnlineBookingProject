package com.online.booking.controller.user;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Blog;
import com.online.booking.entities.Sale;
import com.online.booking.services.BlogService;

@Controller
@RequestMapping("blog")
public class BlogController {
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
		List<Blog> blog = (List<Blog>) blogService.searchBlogByStatus(true);
		PagedListHolder pagedListHolder = new PagedListHolder(blog);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("pagedListHolder", pagedListHolder);
		modelMap.put("title", "Blog");
		
		return "blog.index";
	}
	
	@RequestMapping(value = "blog_detail/{id}" ,method = RequestMethod.GET)
	public String blog_detail(@PathVariable("id") int id ,ModelMap modelMap) {
		modelMap.put("detail", blogService.find(id));
		
		modelMap.put("newBlog", blogService.searchLimitBlog(true, 3));
		modelMap.put("title", "Blog");
		return "blog.blog_detail";
	}
}
