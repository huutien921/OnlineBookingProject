package com.online.booking.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("blog")
public class BlogController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "blog.index";
	}
	
	@RequestMapping(value = "blog_detail" ,method = RequestMethod.GET)
	public String blog_detail() {
		return "blog.blog_detail";
	}
}
