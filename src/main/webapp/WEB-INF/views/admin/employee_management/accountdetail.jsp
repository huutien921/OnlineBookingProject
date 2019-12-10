<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detail</title>
</head>
<body>
<h2 class="text-center"> <FONT color="#FF000">Profile</FONT></h2>
<table class="table" style="background-color: white;">
<tr>
		<td rowspan="10" width="30%">
 
			<img src="${pageContext.request.contextPath }/uploads/images/${ account.avatar }">
			<br />

		</td>
		<th> 	UserName		</th>
		<td> ${ account.username}</td>
	</tr>
	<tr>
		<th> Name:		</th>
		<td>      ${ account.fullname}</td>

	</tr>


	<tr>
		<th>   Birthday		</th>
		<td>     ${ account.birthday}</td>

	</tr>
	<tr>
		<th>  	Email:		</th>
		<td>      ${account.email }</td>

	</tr>
	<tr>
		<th> 		Address:		</th>
		<td>    ${account.address }</td>

	</tr>
	<tr>
		<th>  Gender:</th>
		<td>      		${account.gender }</td>

	</tr>
	<tr>
		<th>  Score:	</th>
		<td>      		${account.score } </td>

	</tr>
	
	
	<tr>
		<th>  	Identity Card:		 	</th>
		<td>      		${account.identitycard } </td>

	</tr>
	
	<tr>
		<th>  	Status	 	</th>
		<td>      					<c:if test="${account.status ==true}">
							 Active
							
							</c:if>
							<c:if test="${account.status ==false}">
							<td> UnActive</td>
							
							</c:if></td>

	</tr>
	<tr>
		<th>   Role</th>
		<td>    	
						<c:forEach var="roles" items="${account.roleAccounts}">
						
						<c:if test="${roles.role.id == 1}">
						Super Admin
						</c:if>
						<c:if test="${roles.role.id == 2}">
								Admin
						
						</c:if>
						<c:if test="${roles.role.id == 3}">
								Employee
						
						</c:if>
						<c:if test="${roles.role.id == 4}">
								User
						
						</c:if>
						<c:if test="${roles.role.id == 5}">
								Super user
						
						</c:if>
						</c:forEach></td>

	</tr>
	
</table>

</body>
</html>