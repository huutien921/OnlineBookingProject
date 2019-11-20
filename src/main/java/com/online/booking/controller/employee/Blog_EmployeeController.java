package com.online.booking.controller.employee;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Blog;
import com.online.booking.entities.Hotel;
import com.online.booking.services.BlogService;

@Controller
@RequestMapping("/employee/blog")
public class Blog_EmployeeController {
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
		
		List<Blog> blogs = (List<Blog>) blogService.searchBlogByStatus(true);
		PagedListHolder pagedListHolder = new PagedListHolder(blogs);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("blogs", pagedListHolder);
		
		return "employee.blog.index";
	}
	
}
