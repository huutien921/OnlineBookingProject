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
	
		
			<table  border="1">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Price</th>
						<th>Beds</th>
						<th>Capacity</th>
						<th>Bed Type</th>
						<th>Room Type</th>
						<th>Room Category</th>
						<th>Amount Room</th>
						<th>Hotel Name</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="room" items="${rooms }">
					<tr>
						<td>${ room.id}</td>
						<td>${ room.name}</td>
						<td>${ room.price}</td>
						<td>${ room.amountOfBed}</td>
						<td>${ room.capacity}</td>
						<td>${room.bedType.name }</td>
						<td>${room.roomType.name }</td>
						<td>${room.roomCategory.name }</td>
						<td>${ room.amountOfRoom } </td>
						<td>${room.hotel.name } </td>
						<td><a href="${pageContext.request.contextPath }/booking/${ room.id}">Booking now</a></td>
						
					</tr>
						</c:forEach>
				</tbody>
			
			</table>

	

	

</body>
</html>