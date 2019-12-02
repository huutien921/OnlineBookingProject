package com.online.booking.tags;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.tags.RequestContextAwareTag;

import com.online.booking.entities.Account;
import com.online.booking.entities.Servicetype;
import com.online.booking.services.AccountService;
import com.online.booking.services.ServicetypeService;

public class ServiceTypeAddTag extends RequestContextAwareTag{

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ServicetypeService servicetypeService;
	@Override
	protected int doStartTagInternal() throws Exception {
		if (servicetypeService == null) {

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

			

			List<Servicetype> servicetypes = (List<Servicetype>) servicetypeService.findAll();
			writer.write("<section class=\"content\">");
			writer.write("  <div class=\"row\">");
			writer.write(" <div class=\"col-md-12\" >");
			writer.write("  <div class=\"box box-primary\">");
			writer.write(" <div class=\"box-header with-border\">");
			writer.write("  <h3 class=\"box-title\">Quick Example</h3>");
			writer.write(" </div>");
			writer.write("  <s:form method=\"post\" modelAttribute=\"servicetype\" action=\""+pageContext.getServletContext().getContextPath()+"/admin/service/saveservicetype\" >");
			writer.write(" <div class=\"box-body \">");
			writer.write("   <div class=\"form-group col-md-6\">");
			writer.write("   <label for=\"exampleInputEmail1\">Name</label>");
			writer.write("<s:input path=\"name\" cssClass=\"form-control\" id=\"inputEmail3\" placeholder=\"Name\"/>");
			//writer.write("<input type=\"text\">");
		//	writer.write("<s:input path=\"name\" placeholder=\"Name\"/>");
			writer.write("</div>");
			writer.write("  </div>");
			writer.write("<div class=\"box-footer\">");
			writer.write(" <button type=\"submit\" class=\"btn btn-info pull-right\">Submit</button>");
			writer.write(" </div>");
			writer.write("  </s:form>");
			writer.write("  </div>");
			writer.write(" </div>");
			writer.write(" </div>");
			writer.write("</section>");
		    
		
		         
		           
		           
		             
		             
		        
		          	

		
			

			

		} catch (Exception e) {

			try {

				writer.write(e.getMessage());

			} catch (IOException e1) {

			}

		}

	}

	
	
}
