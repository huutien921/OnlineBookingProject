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


				UserName:		${ account.username}
					
						
						<br/>
				Name:		${ account.fullname}
						
						<br/>
				Birthday:		${ account.birthday}
						
						<br/>
				Email:		${account.email }
						
						<br/>
				Address:		${account.address }
						
						<br/>
				Gender:		${account.gender }
						
						<br/>
				Avatar:		${ account.avatar } 
						
						<br/>
				Identity Card:		${account.identitycard } 
						
						
						<br/>
				Score:		${account.score } 
				
						<br/>
						
					Status		<c:if test="${account.status ==true}">
							 Active
							
							</c:if>
							<c:if test="${account.status ==false}">
							<td> UnActive</td>
							
							</c:if>
							
							
						<br/>
					Role	
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
						</c:forEach>


</body>
</html>