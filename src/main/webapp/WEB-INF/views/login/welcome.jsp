<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    <!-- lay ra username cua account dang dang nhap -->
	<h3>Welcome ${pageContext.request.userPrincipal.name }</h3>
	
	<br>
	<!-- link trong cau hinh -->
	<a href="${pageContext.request.contextPath }/login/logout">Logout</a> |
	
	<a href="${pageContext.request.contextPath }/account/profile">Profile</a>
	<br>
	<!-- chi super admin co form nay -->
	<sec:authorize access="hasRole('ROLE_SUPER_ADMIN'')">
		<h3>SuperAdmin Panel</h3>
		<a href="#">Link1</a><br>
		<a href="#">Link2</a><br>
		<a href="#">Link3</a><br>
		<a href="#">Link4</a><br>
		<a href="#">Link5</a><br>
	</sec:authorize>
	<!-- chi super admin va admin co form nay -->
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<h3>Admin Panel</h3>
		<a href="#">Link3</a><br>
		<a href="#">Link4</a>
		<a href="#">Link5</a><br>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_EMPLOYEE')">
		<h3>Employee Panel</h3>
		<a href="#">Link4</a>
		<a href="#">Link5</a><br>
	</sec:authorize>