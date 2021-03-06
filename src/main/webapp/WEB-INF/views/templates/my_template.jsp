<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="tags" uri="tags"%>
	<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title><c:if test="${title == null }">
Bookbed
</c:if>
${title }
</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  -->

<!--  -->
	<link rel="icon" type="image/gif" href="${pageContext.request.contextPath }/uploads/images/bookbed_logo.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/custom/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/custom/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/custom/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/css/my.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/custom/css/all.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>
<script
	src="${pageContext.request.contextPath }/resources/user/custom/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/user/custom/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/user/custom/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/user/custom/js/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
<style type="text/css">
.roww>.columnn {
	padding: 0 8px;
}

.roww:after {
	content: "";
	display: table;
	clear: both;
}

.columnn {
	float: left;
	width: 25%;
}

/* The Modal (background) */

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	width: 90%;
	max-width: 800px;
}

/* The Close Button */
.close {
	color: black;
	position: absolute;
	top: 10px;
	right: 25px;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	text-decoration: none;
	cursor: pointer;
}

.mySlides {
	display: none;
}

.cursor {
	cursor: pointer;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 20px;
	margin-top: -200px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

img {
	margin-bottom: -4px;
}

.caption-container {
	text-align: center;
	background-color: black;
	padding: 2px 16px;
	color: white;
}

.demo {
	opacity: 0.6;
}

.active, .demo:hover {
	opacity: 1;
}

img.hover-shadow {
	transition: 0.3s;
}

.hover-shadow:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-2">
				<h3>
					<a href="${pageContext.request.contextPath }/home">
						<img alt="logo" src="${pageContext.request.contextPath }/uploads/images/bookbed_logo.png" style="width: 150px" height="50px">
					</a>
				</h3>
			</div>
			<div class="col-4"></div>
			<div class="col-6">
				<ul class="nav justify-content-end">
					<!-- go to super admin template -->
					<sec:authorize access="hasRole('ROLE_SUPER_ADMIN')">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/superadmin/account/index"><i class="fas fa-globe-asia" style="color: #0101DF;"></i>SuperAdmin</a>
					</li>
					
					</sec:authorize>
					<!-- go to admin template -->
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/admin/home"><i class="fas fa-globe-asia" style="color: #0101DF;"></i>Admin</a>
					</li>
					</sec:authorize>
					<!-- go to employee template -->
					<sec:authorize access="hasRole('ROLE_EMPLOYEE')">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/employee/blog"><i class="fas fa-globe-asia" style="color: #0101DF;"></i>Employee</a>
					</li>
					</sec:authorize>
					<li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-globe-asia" style="color: #0101DF;"></i>Languages</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="#">$USD</a></li>
					<sec:authorize access="!hasRole('ROLE_EMPLOYEE') and !hasRole('ROLE_ADMIN') and !hasRole('ROLE_SUPER_ADMIN')">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/user/account/statusOrder"><i
							class="fa fa-calendar"></i><!--  History-->My Order</a>

				<!-- 	<li class="nav-item"><a class="nav-link" href="#">  --><!-- $--><!--<i class="fas fa-dollar-sign" style="color: #0B3B17"></i>USD</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/login/statusOrder"><i
							class="fa fa-calendar" style="color: #BDBDBD"></i><!--  History--><!----><!-- My Order</a>  -->

					</li>
					</sec:authorize>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/login/profile"><i
							class="fa fa-user" style="color: #819FF7"></i>Profile(<span style="font-weight: bold;"> ${pageContext.request.userPrincipal.name}</span>)</a></li>
							
					</c:if> 
					
					<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/login"><i
							class="fa fa-user" style="color: #819FF7"></i>Login/Register</a></li></c:if>

				</ul>
			</div>
		</div>


	</div>



	<ul class="nav justify-content-center">
		<!-- <li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath }/hotels"><i
				class="fa fa-building-o" style="color: #2E64FE;"></i>Hotels</a></li> -->
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/promotions"><span
				style="font-size: 18px; font-weight: bold; color: orange;">%</span>Promotions</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/saved"> <i
				class="fa fa-download" style="color: #8181F7;"></i>Saved
		</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/myinbox"><i
				class="fa fa-envelope" style="color: #8A0808;"></i>My Inbox</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/blog"><i
				class="fa fa-book" style="color: #8904B1"></i>Blog</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/aboutus"><i
				class="fa fa-info" style="color: #04B4AE"></i>About</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/news"><i
				class="fa fa-phone" style="color: #088A08"></i>Contact</a></li>
				<sec:authorize access="hasRole('ROLE_USER') and !hasRole('ROLE_SUPER_USER')">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/user/superuser/create/hotel"><!-- <i
				class="fa fa-phone" style="color: #088A08"></i> --> <i class="fas fa-user-friends" style="color: #00BFFF"></i>Become partner</a></li>
</sec:authorize>
				<sec:authorize access="hasRole('ROLE_SUPER_USER')">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/superuser/myhotel"><!-- <i
				class="fa fa-phone" style="color: #088A08"></i> --> <i class="fas fa-chart-pie" style="color: #00BFFF"></i>Hotel Management</a></li>
</sec:authorize>
	</ul>

	<tiles:insertAttribute name="content"></tiles:insertAttribute>


	<script type="text/javascript">
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
	<script>
		function openModal() {
			document.getElementById("myModal").style.display = "block";
		}

		function closeModal() {
			document.getElementById("myModal").style.display = "none";
		}

		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			var captionText = document.getElementById("caption");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			captionText.innerHTML = dots[slideIndex - 1].alt;
		}
	</script>

</body>
</html>
