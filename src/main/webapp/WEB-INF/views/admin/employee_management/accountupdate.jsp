<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript">
  
  $(document).ready(function(){
	  $("#birthday").datepicker();
  });
  </script>
</head>
<body>

<s:form method="post" modelAttribute="account" action="${pageContext.request.contextPath }/admin/employee/accountupdate">
		<table>
		<tr>
				<td>Username</td>
				<td>
					<s:input path="username"/>
					
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<input type="text" name="password">
				
				</td>
			</tr>
			
			<tr>
				<td>Name</td>
				<td>
					<s:input path="fullname"/>
					
				</td>
			</tr>
			<tr>
			
			<!--  <td>Birthday</td>
				<td>
					<input type="text" name="birthday" id="birthday">
				
				</td>-->	
			</tr>
			<tr>
				<td>Type</td>
				<td>
					<s:input path="type"/>
					
				</td>
			</tr>
			
			
			<tr>
				<td>Email</td>
				<td>
				
					<s:input path="email"/>
					
				</td>
			</tr>
			
			<tr>
				<td>Address</td>
				<td>
					<s:input path="address"/>
				</td>
			</tr>
			
			<tr>

				<td>Gender</td>
				<td>
				<input type="radio" name="gender" value="Male" checked="checked">Male
				<br>
				<input type="radio" name="gender" value="Female" checked="checked">Female
				</td>
			</tr>
			
			<tr>
				<td>Avatar</td>
				<td>
					<s:input path="avatar"/>
				</td>
			</tr>
			
			<tr>
				<td>Identity Card</td>
				<td>
					<s:input path="identitycard"/>
				
				</td>
			</tr>
			<tr>
				<td>Score</td>
				<td>
					<s:input path="score"/>
				</td>
			</tr>
				
					
		 
			<!--  	<tr>

				<td>Role</td>
				<td>
				-->
				<!--  <input type="radio" name="role" value=1 checked="checked">Super Admin
				<br>
				<input type="radio" name="role" value=2 checked="checked">Admin
				<br>
				<input type="radio" name="role" value=3 checked="checked">Employee
				<br>
				<input type="radio" name="role" value=5 checked="checked">Super User
				<br>
				<input type="radio" name="role" value=4 checked="checked">User
				-->
				<!--  <input type="checkbox" name="role" value=1 >Super Admin
				<br>
				<input type="checkbox" name="role" value=2 >Admin
				<br>
				<input type="checkbox" name="role" value=3 >Employee
				<br>
				<input type="checkbox" name="role" value=5 >Super User
				<br>
				<input type="checkbox" name="role" value=4 >User
				</td>
				
			</tr>
				-->		
			
		
		
			
			
			
			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="Save"/>
					<!--<input type="hidden" value="${id}"/>-->
				</td>
			</tr>
		</table>
		
		
	</s:form>

	
</body>
</html>