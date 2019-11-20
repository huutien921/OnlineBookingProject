package com.online.booking.tags;

import java.io.IOException;

import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.beans.factory.config.AutowireCapableBeanFactory;

import org.springframework.web.context.WebApplicationContext;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

import com.online.booking.entities.Panel;
import com.online.booking.services.PanelService;

public class HeaderTag extends RequestContextAwareTag {

	private static final long serialVersionUID = 1L;

	@Autowired
	private PanelService panelService;

	@Override

	protected int doStartTagInternal() throws Exception {

		if (panelService == null) {

			WebApplicationContext webApplicationContext = getRequestContext().getWebApplicationContext();

			AutowireCapableBeanFactory autowireCapableBeanFactory = webApplicationContext
					.getAutowireCapableBeanFactory();

			autowireCapableBeanFactory.autowireBean(this);

		}

		return SKIP_BODY;

	}

	@Override

	public void doFinally() {

		JspWriter writer = pageContext.getOut();

		try {

			writer.write("<ul class=\"navbar-nav ml-auto\">");

			List<Panel> panels = (List<Panel>) panelService.searchHeaderTrue();

			if (panels != null) {

				for (Panel panel : panels) {

					writer.write("<li class=\"nav-item\"><a href=\'" + pageContext.getServletContext().getContextPath()+"/" + panel.getTitle() +"' class=\"nav-link\">"+panel.getName()+"</a>");

					

					}

					writer.write("<li/>");

				}

			

			writer.write("</ul>");

		} catch (Exception e) {

			try {

				writer.write(e.getMessage());

			} catch (IOException e1) {

			}

		}

	}

}