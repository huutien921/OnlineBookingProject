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


		${ service.id}
		<br /> ${ service.name}
		<br /> ${ service.price}
		<br /> ${ service.core}
		<br /> ${ service.priority}
		<br/> 
		<c:out value="${ service.description}" escapeXml="false"></c:out>
</body>
</html>