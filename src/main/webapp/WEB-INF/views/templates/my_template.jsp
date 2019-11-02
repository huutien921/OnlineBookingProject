<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
    <%@taglib prefix="tags" uri="tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home page</title>

 <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/style.css">

</head>
<body>

	 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="${pageContext.request.contextPath }/home">Bookbed</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/hotels" class="nav-link">Hotels</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/promotions" class="nav-link">Promotions</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/saved" class="nav-link">Saved</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/myinbox" class="nav-link">My Inbox</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/blog" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/aboutus" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath }/login" class="nav-link">Login/Register</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath }/resources/user/images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels</h1>
          </div>
        </div>
      </div>
    </div>
		
					<tiles:insertAttribute name="content"></tiles:insertAttribute>
			
		
		
	<br><br>
	<!-- -----------------------------------------------------------FOOTER------------------------------------------------------------------------------------ -->
	<footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Adventure</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                <li><a href="#" class="py-2 d-block">General enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Wildlife</a></li>
                <li><a href="#" class="py-2 d-block">Honeymoon</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/aos.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath }/resources/user/js/main.js"></script>
	
</body>
</html>