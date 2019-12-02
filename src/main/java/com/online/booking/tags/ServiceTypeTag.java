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

public class ServiceTypeTag extends RequestContextAwareTag{

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
			writer.write("<section class=\"content-header\">");
			writer.write("  <h1>");
			writer.write(" Service Type");
			writer.write(" </h1>");
			writer.write(" <ol class=\"breadcrumb\">");
			writer.write("   <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Home</a></li>");
			writer.write(" <li><a href=\"#\">Tables</a></li>");
			writer.write("  <li class=\"active\">Data tables</li>");
			writer.write(" </ol>");
			writer.write(" </section>");
			
		    
		      
		   
			
			
			writer.write("<section class=\"content\">");
			
			writer.write("<div class=\"row\">");
			writer.write("<div class=\"col-xs-12\">");
			writer.write("<div class=\"box\">");
			writer.write("<div class=\"box-header\">");
			writer.write("<h3 class=\"box-title\"><a  href=\""+pageContext.getServletContext().getContextPath()+"/admin/service/saveservicetype\" class=\"btn btn-warning\">Create New</a></h3>");
			writer.write("</div>");
			writer.write("<div class=\"box-body\">");
			writer.write(" <table id=\"example1\" class=\"table table-bordered table-striped\">");
			writer.write("<thead>");
			writer.write("<tr>");
			writer.write("<th>ID</th>");
			writer.write("<th>Name</th>");
			
			
			writer.write("<th>Action</th>");
			writer.write("	</tr>");
			writer.write("</thead>");
			writer.write("<tbody>");
		
		      		
								
							

									
			
			
			if (servicetypes!= null) {

				for (Servicetype servicetype :servicetypes ) {
					writer.write("<tr>");
					
					writer.write("<td>"+servicetype.getId()+"</td>");
					writer.write("<td>"+servicetype.getName()+"</td>");
				
					
					
				 
					
						writer.write("<td><a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/accountdetail/"+servicetype.getId()+"\" class=\"btn btn-success\">Detail</a>");
						writer.write("	<a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/accountupdate/"+servicetype.getId()+"\" class=\"btn btn-success\">Update</a>");
						
						writer.write("</td>");
						writer.write("</tr>");
					

					}
				
				writer.write("	</tbody>");
				
				writer.write("<tfoot>");
				
				writer.write("<tr>");
				writer.write("<th>ID</th>");
				writer.write("<th>Name</th>");
			
			
				writer.write("<th>Action</th>");
				writer.write("	</tr>");
				
				writer.write("</tfoot>");

				

				writer.write("  </table>");

				
				
				writer.write("</div>");
				writer.write(" </div>");
				writer.write("</div>");
				writer.write("</div>");
				writer.write("</section>");
				
				
	
					
			


				}

			

			

		} catch (Exception e) {

			try {

				writer.write(e.getMessage());

			} catch (IOException e1) {

			}

		}

	}

	
	
}
