<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<br>
<br>
<div class="container"
	style="background-color: #819FF7; background-image: linear-gradient(to right, #2E64FE, #81F7F3); padding: 40px;">
	<br>
	<div class="row">
		<div class="col-6">
			<br>
			<h2 style="color: white;">Welcome</h2>
			<h4 style="color: white;">Looking to travel around the world
				with benefits?</h4>
			<h4 style="color: white;">Log in or Register to enjoy</h4>
		</div>
		<div class="col-2"></div>
		<div class="col-4">
			<div>
			<span style="color:red">${err }</span>
				<h1 style="color: white;">Register</h1>
				<s:form method="post" modelAttribute="accountModel"
					enctype="multipart/form-data"
					action="${pageContext.request.contextPath }/login/registerAccount">

					<div class="form-group">
						<label style="color: white;">Username:</label>
						<s:input path="username" class="form-control"></s:input>
					</div>
					<div class="form-group">
						<label style="color: white;">Password:</label>
						<s:password path="password" class="form-control"></s:password>
					</div>
					<div class="form-group">
						<label style="color: white;">Confirm password:</label>
						<input type="password" class="form-control" name="confirmPassword">
					</div>
					<div class="form-group">
						<label style="color: white;">Fullname:</label>
						<s:input path="fullname" class="form-control"></s:input>
					</div>
					<div class="form-group">
						<span style="color: white;">Gender:</span>
						<s:radiobutton path="gender" value="Male" checked="checked" />
						<span style="color: white;">Male |</span>

						<s:radiobutton path="gender" value="Female" />
						<span style="color: white;"> Female</span>
					</div>
					<div class="form-group">
						<label style="color: white;">Email:</label>
						<s:input path="email" class="form-control"></s:input>
					</div>

					<button type="submit" class="btn btn-light">Register</button>
				</s:form>
				<br> <a href="${pageContext.request.contextPath }/login/index"
					style="color: white">Login</a>
			</div>
		</div>
	</div>
	<br>

</div>
