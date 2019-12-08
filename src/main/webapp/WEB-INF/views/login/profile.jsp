<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<br>
<h5 style="text-align: center;">Welcome,
	${profile.fullname }</h5>
<p style="text-align: center;">
	<a href="${pageContext.request.contextPath }/login/logout"
		style="color: blue;">Logout</a>
</p>
<hr>
<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<div class="card" style="width: 300px">
				<img class="card-img-top"
					src="${pageContext.request.contextPath }/uploads/images/${profile.avatar }"
					alt="Card image" style="width: 100%;">
				<div class="card-body">
					<h4 class="card-title">${profile.fullname }</h4>
					<p class="card-text">Gender: ${profile.gender }</p>
					<p class="card-text">Email: ${profile.email }</p>

					<!--  <a data-toggle="tab" href="#home" class="btn btn-outline-info">Update Profile</a>-->
				</div>
			</div>
		</div>

		<div class="col-sm-8">
			<div class="container mt-3">
				<h2>Profile</h2>
				<span style="color: green">${msg }</span>
				<br>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#home">Edit Profile</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#avatar">Change Avatar</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu1">My Point</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu2">My Booking</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu3">Promotion</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu4">Log out</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						<br>
						<!--  <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>-->
						<h3>Edit Profile</h3>
						<hr>
						<s:form method="post" modelAttribute="profile"
							enctype="multipart/form-data"
							action="${pageContext.request.contextPath }/login/updateProfile">
							<div class="form-group">
								<label>FullName:</label>
								<s:input class="form-control" path="fullname"></s:input>
							</div>
							<div class="form-group">
								<label>Email:</label>
								<s:input class="form-control" path="email"></s:input>
							</div>
							<div class="form-group">
								<label>Gender:</label>
								<s:radiobutton path="gender" value="Male"/>
								Male |
								<s:radiobutton path="gender" value="Female"/>
								Female
							</div>
							<div class="form-group">
								<label>Address:</label>
								<s:input class="form-control" path="address"></s:input>
							</div>
							<div class="form-group">
								<label>IdentityCard:</label>
								<s:input class="form-control" path="identitycard"></s:input>
							</div>
							<div class="form-group">
							
							<input type="submit" value="Update" class="btn-s"/>
						</div>
						</s:form>
							
					</div>
					<div id="avatar" class="container tab-pane fade">
						<br>
						<!--  <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>-->
						<h3>Avatar</h3>
						<form method="post"
							enctype="multipart/form-data"
							action="${pageContext.request.contextPath }/login/updateAvatar">
						<input type="file" name="file">
						<br><br>
						<input type="submit" value="Update"/>
						</form>
					</div>
					<div id="menu1" class="container tab-pane fade">
						<br>
						<!--  <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>-->
						<h3>My Point</h3>
					</div>
					<div id="menu2" class="container tab-pane fade">
						<br>
						<!--  <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>-->
						<h3>My Booking</h3>
					</div>
					<div id="menu3" class="container tab-pane fade">
						<br>
						<!-- <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>-->
						<h3>Promotion</h3>
					</div>
					<div id="menu4" class="container tab-pane fade">
						<br> <a
							href="${pageContext.request.contextPath }/login/logout"
							style="color: blue;">Logout</a>
						<!--  <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>-->

					</div>
				</div>
			</div>
		</div>
	</div>
</div>