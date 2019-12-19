package com.online.booking.controller.employee;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Blog;
import com.online.booking.entities.Hotel;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.services.AccountService;
import com.online.booking.services.BlogService;

@Controller
@RequestMapping("/employee/blog")
public class Blog_EmployeeController{
	
	@Autowired
	private AccountService accountService;
	@Autowired
	private BlogService blogService;
	@Autowired
	private UploadFileHelper uploadFileHelper;

	@RequestMapping(value = {"", "indexBlog"} ,method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {

		List<Blog> blogs = (List<Blog>) blogService.searchBlogByStatus(true);
		PagedListHolder pagedListHolder = new PagedListHolder(blogs);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("blogs", pagedListHolder);

		// new
	
		modelMap.put("newsBlog", blogService.searchLimitBlog(true, 1000));
		modelMap.put("unActiveBlog", blogService.searchLimitBlog(false, 1000));
		return "employee.blog.index";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Blog blogModel = new Blog();
		modelMap.put("blogModel", blogModel);
		modelMap.put("title", "Write new blog");
		return "employee.blog.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Authentication authentication, @ModelAttribute("blogModel") Blog blog, ModelMap modelMap,HttpServletRequest request, RedirectAttributes redirectAttributes,
			@RequestParam("file") MultipartFile file) {
			
			System.out.println("blog name" + blog.getTitle());
			System.out.println("content" + blog.getContent());
			System.out.println("Status" + blog.isStatus());
			String fileName = uploadFileHelper.saveFile(file);
			System.out.println("file name:" + fileName);
			
			blog.setCreated(new Date());
			
			String username = authentication.getName();
			
			blog.setAccount(new Account(accountService.findByUsernameAndStatus(username, true).getId()));
			blog.setSrc(fileName);
			blogService.save(blog);
			
			
			redirectAttributes.addFlashAttribute("msg", "Success : #" + blog.getId());
		return "redirect:indexBlog";
	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id,ModelMap modelMap) {
		Blog blogModel = blogService.find(id);
		
		modelMap.put("blogModel", blogModel);
		modelMap.put("title", "edit blog id: #");
		return "employee.blog.edit";
	}
	
	@RequestMapping(value = "update/{id}", method = RequestMethod.POST)
	public String update(@RequestParam("file") MultipartFile file, HttpServletRequest request, @ModelAttribute("blogModel") Blog blog, @PathVariable("id") int id,ModelMap modelMap, RedirectAttributes redirectAttributes) {
		
		Blog blogg =  blogService.find(id);
		blogg.setTitle(blog.getTitle());
		blogg.setContent(blog.getContent());
		
		if(!file.isEmpty()) {
			String fileName = uploadFileHelper.saveFile(file);
			blogg.setSrc(fileName);
		}
	
		blogg.setStatus(blog.isStatus());
		blogService.save(blogg);
		redirectAttributes.addFlashAttribute("msg", "Edit success: #" + blog.getId());
		
		
		
		return "redirect:/employee/blog/indexBlog";
	}

	
}
