package com.online.booking.tags;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class PromotionsTag extends RequestContextAwareTag {

	@Override
	protected int doStartTagInternal() throws Exception {
		return 0;
	}

	@Override
	public void doFinally() {
		try {

			String jspPage = "../tags/promotions/index.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();

			request.getRequestDispatcher(jspPage);
			pageContext.include(jspPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
