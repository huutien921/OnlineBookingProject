
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/moment/min/moment.min.js"></script>
	

<script type="text/javascript">
	jQuery(document)
			.ready(
					function() {
						var d = moment(new Date()).format('YYYY-MM-DD');
						$('#checkin').val(d);
						
						
						$("#checkout").on("change", function(event) {
							
							var date2 = new Date($('#checkout').val());
							var date1 = new Date($('#checkin').val());
						
							var dateH = (date2.getTime() - date1.getTime());

							if(dateH <= 0){
							
							document.getElementById("checkout").style.color = "red";
							
								}
								
						
							
							
							});
						});
	</script>
<br>

<div
	style="background-color: #819FF7; background-image: linear-gradient(to right, #2E64FE, #81F7F3); padding: 40px;">
	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-5">
					<br> <br> <br>
					
					<c:if test="${name != null }">
						<h3 style="color: white;">Welcome back, ${name }!</h3>
					</c:if>
					
					<c:if test="${name == null }">
						<h3 style="color: white;">Welcome to Bookbed</h3>
					</c:if>
					
					<h5 style="color: #E3E5EA;">Did you know? Traveling nurtures
						modesty as we experience the bigness of this world.</h5>
				</div>
				<div class="col-1"></div>
				<div class="col-3">
					<div class="container">
						<div class="row">
							<c:forEach var="item" items="${new1Promotions}">
								<!-- promo -->

								<h5 style="color: white"><i style="color: #BF00FF;" class="fa fa-gift"></i> New Promotion</h5>
								<a
									href="${pageContext.request.contextPath }/promotions/detail/${item.id}"><img
									alt="promo"
									src="${pageContext.request.contextPath }/uploads/images/${item.src}"
									style="width: 250px; height: 200px"></a>
								<h5 style="color: white;">#${item.code }</h5>


								<!-- promo -->
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="container">
						<div class="row">
							<c:forEach var="item" items="${new1Blog}">
								<!-- promo -->
								<h5 style="color: white"><i style="color: #BF00FF;" class="fa fa-blog"></i> New Blog</h5>
							<!--  	<a
									href="${pageContext.request.contextPath }/blog/detail/${item.id}"><img
									alt="blog"
									src="${pageContext.request.contextPath }/uploads/images/${item.src}"
									style="width: 250px; height: 200px"></a>-->
									<a
									href="${pageContext.request.contextPath }/blog/blog_detail/${item.id}"><img
									alt="blog"
									src="${pageContext.request.contextPath }/uploads/images/${item.src}"
									style="width: 250px; height: 200px"></a>
									
								<h5 style="color: white;">${item.title }</h5>
								<!-- promo -->
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- form search -->
<div class="jumbotron jumbotron-fluid">

	<div class="container">
		<form action="${pageContext.request.contextPath}/search" method="get">

			<div class="form-row align-items-center">
				<div class="col-auto">
					<label for="state">City name <i class="fa fa-map-marker"></i></label>
					<input type="text" value="${address }" name="address" placeholder="City" required="required">
				</div>


				<div class="col-auto">
					<label>Check in <i class="fas fa-check"></i></label> <input
						type="date" name="checkin"  value="${checkin }" required="required" id="checkin">
				</div>
				<div class="col-auto">
					<label>Check out <i class="fas fa-remove"></i></label> <input
						type="date" name="checkout" value="${checkout }" required="required" id="checkout" >
				</div>
				<div class="col-auto">
					<label>Guest <i class="fa fa-user"></i></label> <input
						class="inputRoom" type="number" name="guests" value="${guests }" placeholder="0" required="required" min="1">
				</div>
				<div class="col-auto">
					<label>Room <i class="fa fa-home"></i></label> <input
						class="inputRoom" type="number" name="room" value="${room }" placeholder="0" required="required" min="1" >
				</div>
				<c:if test="${ms == 'failed' }">
				<div class="col-10">
					<label  style="color: red;">Please fill out the fields !
					</label>
				</div>
				</c:if>
				<div class="col-10">
					<label>How to booking <i class="fa fa-question"></i>
					</label>
				</div>

				<div class="col-auto">
					<input type="submit" value="Search" class="btn-s">
				</div>

			</div>


		</form>
	</div>
	<!-- /form search -->

</div>


<br>

<div class="container-fluid text-center">
	<div class="row content">
		<div class="col-sm-2 sidenav">
		
		</div>
		<div class="col-sm-8 text-left">

			<div class="form-row align-items-center">
				<div class="col-4">
					<h5>Extra space for family and friends</h5>
					<p>Enjoy a wide range of apartments and villas on Bookbed</p>
				</div>
				<div class="col-4">
					<div class="container">
						<img
							src="${pageContext.request.contextPath }/uploads/images/muaxuan.jpg"
							alt="Snow" style="width: 300px; height: 200px">
						<div>
							<h5 style="color: #A4A4A4">Hotels</h5>
						</div>
						<div>
							<span style="color: #A4A4A4">+10 000 hotels</span>
						</div>

					</div>
				</div>
				<div class="col-4">
					<div class="container">
						<img
							src="${pageContext.request.contextPath }/uploads/images/hotel-2.jpg"
							alt="Snow" style="width: 300px; height: 200px">
						<div>
							<h5 style="color: #A4A4A4">Villas</h5>
						</div>
						<div>
							<span style="color: #A4A4A4">+5 000 villas</span>
						</div>

					</div>
				</div>
			</div>
			<br> <br>
			<hr>
			<br> <br> <br> <br>


			<div class="row">

				<div class="col-3">
					<h4>
						<span style="color: orange;">%</span> New promotions
					</h4>
				</div>
				<div class="col-6">
					<i class="fa fa-plane" style="color: blue;"></i> <i
						class="fa fa-home" style="color: violet;"></i> <i
						class="fa fa-building" style="color: gray;"></i>
				</div>
				<div class="col-3">
					<a href="${pageContext.request.contextPath}/promotions"><span
						style="color: #3991EE;">View all promotions</span> </a>
				</div>

				<div class="col-12">
					<!-- promo -->
					<div class="container">
						<div class="row">
							<c:forEach var="item" items="${newPromotions}">
								<!-- promo -->
								<div class="col-sm-4">
									<img alt="promo"
										src="${pageContext.request.contextPath }/uploads/images/${item.src}"
										style="width: 250px; height: 200px">
									<h5 style="color: gray;">Code: ${item.code }</h5>
									<div class="row">
										<div class="col">
											<small style="color: gray;">StartDate:${item.startday }
												<br> EndDate:${item.endday }
											</small>
										</div>
										<div class="col">
											<a
												href="${pageContext.request.contextPath }/promotions/detail/${item.id}"
												class="btn btn-outline-info">Detail</a>
										</div>
									</div>


								</div>
								<!-- promo -->
							</c:forEach>
						</div>
					</div>
					<!-- /promo -->
				</div>

			</div>
			<br> <br>
			<hr>
			<br> <br> <br> <br>

			<h1>App</h1>
			<div class="container-fluid">
				<div class="row">
					<div class="col-4">

						<img alt="logo"
							src="${pageContext.request.contextPath }/uploads/images/bookbed_logo.png"
							style="width: 250px" height="90px">
					</div>
					<div class="col-8">
						<div class="row">
							<div class="col-6"></div>
							<div class="col-3">
								<img alt="logo"
									src="${pageContext.request.contextPath }/uploads/images/googleplay.png"
									style="width: 150px" height="60px">
							</div>
							<div class="col-3">
								<img alt="logo"
									src="${pageContext.request.contextPath }/uploads/images/appstore.png"
									style="width: 150px" height="60px">
							</div>
						</div>

						<div class="row">
							<div class="col-12">
								<span style="font-size: 20px;"> Cheaper to order through
									<span style="font-weight: bold;">bookbed</span> app
								</span>
							</div>

						</div>

					</div>

				</div>
			</div>


			<hr>
			<br> <br> <br> <br> <br> <br>
			<div class="row">

				<div class="col-3">
					<h4>
						<i class="fa fa-blog" style="color: violet"></i>New Blog
					</h4>
				</div>
				<div class="col-6">
					<i class="fa fa-blog" style="color: violet"></i> <i
						class="fa fa-book" style="color: violet"></i>
				</div>
				<div class="col-3">
					<a href="${pageContext.request.contextPath}/blog"><span
						style="color: #3991EE;">View all blog</span> </a>
				</div>

				<div class="col-12">
					<!-- promo -->
					<div class="container">
						<div class="row">
							<c:forEach var="item" items="${newBlog}">
								<!-- promo -->
								<div class="col-sm-4">
									<a
										href="${pageContext.request.contextPath }/blog/blog_detail/${item.id}"><img
										alt="promo"
										src="${pageContext.request.contextPath }/uploads/images/${item.src}"
										style="width: 250px; height: 200px"></a>
									<h5 style="color: gray;">${item.title }</h5>
									<div class="row">
										<div class="col">
											<small style="color: gray;">Created:${item.created }

											</small>
										</div>
										<div class="col">
											<a
												href="${pageContext.request.contextPath }/blog/blog_detail/${item.id}"
												class="btn btn-outline-info">Detail</a>
										</div>
									</div>

								</div>
								<!-- promo -->
							</c:forEach>
						</div>
					</div>
					<!-- /promo -->
				</div>

			</div>
			<br> <br>
			<hr>
			<br> <br> <br>
			<h3 style="color: gray; text-align: center;">Why book with
				Bookbed?</h3>
			<br>
			<div class="container-fluid">
				<div class="row">
					<div class="col-9 ">
						<h5>24/7 Customer service</h5>
						<div class="row">
							<div class="col-12">
								<p>Get help, fast! Our 24/7 customer service ensures you
									receive the help and support you need - whenever, wherever.</p>
							</div>

						</div>
					</div>
					<div class="col-3 ">
						<img alt="logo"
							src="${pageContext.request.contextPath }/uploads/images/1.png">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-3 ">
						<img alt="logo"
							src="${pageContext.request.contextPath }/uploads/images/2.png">
					</div>
					<div class="col-9 ">
						<h5>Secure & Flexible Payment Methods</h5>
						<div class="row">
							<div class="col-12 ">
								<p>No Credit Card, no problem! We accept payments via Debit
									Card, Bank Counters, 7-Eleven, and Pawnshops.</p>
							</div>

						</div>
					</div>

				</div>
				<br>
				<div class="row">
					<div class="col-9 ">
						<h5>Real Guest Reviews</h5>
						<div class="row">
							<div class="col-12">
								<p>2,000,000+ verified reviews from Bookbed users will help
									you book the room perfect for you.</p>
							</div>

						</div>
					</div>
					<div class="col-3 ">
						<img alt="logo"
							src="${pageContext.request.contextPath }/uploads/images/4.png">
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-3 ">
					<img alt="logo"
						src="${pageContext.request.contextPath }/uploads/images/3.png">
				</div>
				<div class="col-9 ">
					<h5>Exclusive In-app Deals</h5>
					<div class="row">
						<div class="col-12">
							<p>Download Bookbed App to get the best room rates and
								exciting promotions!</p>
						</div>

					</div>
				</div>

			</div>
			<hr>
			<br> <br> <br>
			<h1>Welcome</h1>


		</div>
		<div class="col-sm-2 sidenav">
		
		</div>
	</div>
</div>

<div class="jumbotron text-center" style="margin-bottom: 0">
	<footer class="page-footer font-small blue pt-4">

		<!-- Footer Links -->
		<div class="container-fluid text-center text-md-left">

			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-3 mt-md-0 mt-3">

					<!-- Content -->
					<h5 class="text-uppercase">
						Bookbed<i class="fa fa-bed" style="color: #069CFF"></i>
					</h5>
					<p>Extra space for family and friends</p>

				</div>
				<!-- Grid column -->

				<hr class="clearfix w-100 d-md-none pb-3">

				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3">

					<!-- Links -->
					<h5 class="text-uppercase">
						About Bookbed<i class="fa fa-bed" style="color: #069CFF"></i>
					</h5>

					<ul class="list-unstyled">
						<li><a href="#!">How to book</a></li>
						<li><a href="#!">Contact us</a></li>
						<li><a href="#!">About us</a></li>
						<li><a href="#!">Help center</a></li>
					</ul>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3">

					<!-- Links -->
					<h5 class="text-uppercase">Follow us on</h5>

					<ul class="list-unstyled">
						<li><a href="#!">Twitter</a></li>
						<li><a href="#!">Facebook</a></li>
						<li><a href="#!">Instagram</a></li>
						<li><a href="#!">Youtube</a></li>
					</ul>

				</div>
				<!-- Grid column -->

				<div class="col-md-3 mb-md-0 mb-3">

					<!-- Links -->
					<h5 class="text-uppercase">Follow us on</h5>

					<ul class="list-unstyled">
						<li><a href="#!">Twitter</a></li>
						<li><a href="#!">Facebook</a></li>
						<li><a href="#!">Instagram</a></li>
						<li><a href="#!">Youtube</a></li>
					</ul>
					<h5>Download Bookbed App</h5>
					<br> <img alt="logo"
						src="${pageContext.request.contextPath }/uploads/images/googleplay.png"
						style="width: 150px" height="60px"> <br> <br> <img
						alt="logo"
						src="${pageContext.request.contextPath }/uploads/images/appstore.png"
						style="width: 150px" height="60px">
				</div>
			</div>
			<!-- Grid row -->

		</div>
		<!-- Footer Links -->

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			� 2019 Copyright: Bookbed<i class="fa fa-bed" style="color: #069CFF"></i>

		</div>
		<!-- Copyright -->

	</footer>
	<!-- Footer -->
</div>