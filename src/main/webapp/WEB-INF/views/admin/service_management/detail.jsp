<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<h2 class="text-center"> <FONT color="#FF000">Service</FONT></h2>
<table class="table" style="background-color: white;">
<tr>
		<td rowspan="10" width="30%">
 
			<img src="${pageContext.request.contextPath }/uploads/images/${ service.iconSrc}">
			<br />

		</td>
		<th> 	Name		</th>
		<td> ${ service.name}</td>
	</tr>

<tr>
		<th> Price		</th>
		<td>      ${ service.price}</td>

	</tr>


	<tr>
		<th>   Core		</th>
		<td>      ${ service.core}</td>

	</tr>
	<tr>
		<th>  	Priority		</th>
		<td>      ${ service.priority}</td>

	</tr>
<tr>
		<th>  	Description		</th>
		<td>      <c:out value="${ service.description}" escapeXml="false"></c:out></td>

	</tr>
</table>




	
		
</body>
</html>