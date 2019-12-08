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

import com.online.booking.services.AccountService;

public class EmployeeTag extends RequestContextAwareTag{

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private AccountService accountService;
	@Override
	protected int doStartTagInternal() throws Exception {
		if (accountService == null) {

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

			

			List<Account> accounts = (List<Account>) accountService.findAllEmployee(3);
			writer.write("<section class=\"content-header\">");
			writer.write("  <h1>");
			writer.write("  Employee");
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
			writer.write("<h3 class=\"box-title\"><a  href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/insertaccount\" class=\"btn btn-warning\">Create New</a></h3>");
			writer.write("</div>");
			writer.write("<div class=\"box-body\">");
			writer.write(" <table id=\"example1\" class=\"table table-bordered table-striped\">");
			writer.write("<thead>");
			writer.write("<tr>");
			writer.write("<th>ID</th>");
			writer.write("<th>User name</th>");
			writer.write("<th>Full name</th>");
			writer.write("<th>Birthday</th>");
			writer.write("<th>Email</th>");
			writer.write("<th>Address</th>");
			writer.write("<th>Gender</th>");
			writer.write("<th>Avatar</th>");
			writer.write("<th>Identity card</th>");
			writer.write("<th>Score</th>");
			writer.write("<th>Created</th>");
			writer.write("<th>Status</th>");
			
			writer.write("<th>Action</th>");
			writer.write("	</tr>");
			writer.write("</thead>");
			writer.write("<tbody>");
		
		      		
								
							

									
			
			
			if (accounts != null) {

				for (Account account : accounts) {
					writer.write("<tr>");
					
					writer.write("<td>"+account.getId()+"</td>");
					writer.write("<td>"+account.getUsername()+"</td>");
					writer.write("<td>"+account.getFullname()+"</td>");
					writer.write("<td>"+account.getBirthday()+"</td>");
					writer.write("<td>"+account.getEmail()+"</td>");
					writer.write("<td>"+account.getAddress()+"</td>");
					
					
				
					writer.write("<td>"+account.getGender()+"</td>");
					writer.write("<td>"+account.getAvatar()+"</td>");
					writer.write("<td>"+account.getIdentitycard()+"</td>");
					writer.write("<td>"+account.getScore()+"</td>");
					writer.write("<td>"+account.getCreated()+"</td>");
					if(account.getStatus()==true) {
						writer.write("<td>Active</td>");
					}else {
						writer.write("<td>Unactive</td>");
					}
					
					
					
				 
					
						writer.write("<td><a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/accountdetail/"+account.getId()+"\" class=\"btn btn-success\">Detail</a>");
						writer.write("	<a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/accountupdate/"+account.getId()+"\" class=\"btn btn-success\">Update</a>");
						if(account.getStatus()==true) {

							writer.write("	<a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/unactive/"+account.getId()+"\" class=\"btn btn-success\">Unactive</a>");
						}else {
							writer.write("	<a href=\""+pageContext.getServletContext().getContextPath()+"/admin/employee/active/"+account.getId()+"\" class=\"btn btn-success\">Active</a>");
						}
						writer.write("</td>");
						writer.write("</tr>");
					

					}
				
				writer.write("	</tbody>");
				
				writer.write("<tfoot>");
				
				writer.write("<tr>");
				writer.write("<th>ID</th>");
				writer.write("<th>User name</th>");
				writer.write("<th>Full name</th>");
				writer.write("<th>Birthday</th>");
				writer.write("<th>Email</th>");
				writer.write("<th>Address</th>");
				writer.write("<th>Gender</th>");
				writer.write("<th>Avatar</th>");
				writer.write("<th>Identity card</th>");
				writer.write("<th>Score</th>");
				writer.write("<th>Created</th>");
				writer.write("<th>Status</th>");
			
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
