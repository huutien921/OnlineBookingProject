<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>




<!-- --------------------------------------------------------dialog------------------------------------------------- -->
<!-- Trigger the modal with a button -->


<!-- Modal -->


<!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>-->
<section class="ftco-section ftco-degree-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 sidebar">
				<div class="sidebar-wrap ftco-animate fadeInUp ftco-animated">
					<h3>Feedback</h3>
					<hr>

					<form class="star-rating" method="get">
						<c:forEach var="evaluate" items="${evaluates }">
							<img width="35" height="35"
								src="${pageContext.request.contextPath }/uploads/images/${evaluate.account.avatar}">
							<span> ${evaluate.account.username }</span>
							<small class="rate"> <span> <c:forEach var="star"
										begin="1" end="${ evaluate.numberOfStars }" step="1">
										<i class="icon-star"></i>

									</c:forEach>



							</span>

							</small>

							<br>
							<c:if test="${fn:length(evaluate.content) <= 65 }">
								<small>${evaluate.content }</small>
							</c:if>
							<c:if test="${fn:length(evaluate.content) > 65 }">


								<small>${fn:substring(evaluate.content ,0, 65)}</small>

								<div id="demo${evaluate.id }" class="collapse">
									<small>${fn:substring(evaluate.content ,65,1200)}</small>
								</div>

								<small style="color: blue"><a href="" class=""
									data-toggle="collapse" data-target="#demo${evaluate.id }">more</a></small>

							</c:if>
							<br>
						</c:forEach>

						<c:if test="${hotel.evaluates.size() > 5}">
							<small style="color: blue">See more...</small>
						</c:if>

						<hr>
					</form>

				</div>

			</div>
			<div class="col-lg-9">
				<div class="row">
					<!--<div class="col-md-12 ftco-animate fadeInUp ftco-animated">
          			<div class="single-slider owl-carousel owl-loaded owl-drag">
          				
          				
          				
          			  <div class="owl-stage-outer"><div class="owl-stage" style="transition:all; width: 5775px; transform: translate3d(-3300px, 0px, 0px);"><div class="owl-item cloned" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-3.jpg);"></div>
          				</div></div><div class="owl-item cloned" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-4.jpg);"></div>
          				</div></div><div class="owl-item" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-2.jpg);"></div>
          				</div></div><div class="owl-item animated owl-animated-out fadeOut" style="left: 825px; width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-3.jpg);"></div>
          				</div></div><div class="owl-item animated owl-animated-in fadeIn active" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-4.jpg);"></div>
          				</div></div><div class="owl-item cloned" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-2.jpg);"></div>
          				</div></div><div class="owl-item cloned" style="width: 825px;"><div class="item">
          					<div class="hotel-img" style="background-image: url(${pageContext.request.contextPath }/resources/user/images/hotel-3.jpg);"></div>
          				</div></div></div></div><div class="owl-nav"><button class="owl-prev" role="presentation"><span class="ion-ios-arrow-back"></span></button><button class="owl-next" role="presentation"><span class="ion-ios-arrow-forward"></span></button></div><div class="owl-dots"><button class="owl-dot"><span></span></button><button class="owl-dot"><span></span></button><button class="owl-dot active"><span></span></button></div></div>
          		</div> -->

					<div class="container">
						<h2>Introducing the hotel</h2>
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->

							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<c:forEach var="numcar" end="${hotel.rooms.size() }" begin="1"
									step="1">
									<li data-target="#myCarousel" data-slide-to="${numcar}"></li>

								</c:forEach>


							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">

								<div class="item active">
									<img
										src="${pageContext.request.contextPath }/uploads/images/${hotel.image}"
										alt="Los Angeles" style="width: 100%;">
									<div class="carousel-caption">
										<h3>${hotel.name }</h3>
										<p>${hotel.city }</p>
									</div>
								</div>
								<c:forEach var="room" items="${hotel.rooms }">
									<div class="item">
										<img
											src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}"
											alt="Chicago" style="width: 100%;">
										<div class="carousel-caption">
											<h3>${room.name }</h3>
											<c:if
												test="${room.copponRoom != null and room.copponRoom.status == true }">
												<span style="text-decoration: line-through;">$ <fmt:formatNumber
														type="number" value="${room.price }" pattern="###,###" /><span>
														/night</span></span>
												<br>
											</c:if>
											<span> $ <fmt:formatNumber type="number"
													value="${room.price * (100 - room.copponRoom.sale )/100 }"
													pattern="###,###" /> <span>/night</span></span>
										</div>
									</div>

								</c:forEach>




							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>


					<!--  -->
					<br>


				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-6 sidebar"></div>

					<div class="col-lg-3 sidebar">
						<input class="btn btn-info btn-lg" type="button" value="Save">
					</div>
					<div class="col-lg-3 sidebar">

						<input class="form-control btn btn-primary" type="button"
							value="Book now">
					</div>
				</div>


				<div
					class="col-md-12 hotel-single mt-4 mb-5 ftco-animate fadeInUp ftco-animated">
					<span>Our Best hotels &amp; Rooms</span>
					<h2>Luxury Hotel in ${hotel.city }</h2>
					<p class="rate mb-5">
						<span class="loc"><a  target="_blank" rel="noopener noreferrer"
							href="http://maps.google.com/?q=${hotel.addressFull }"><i
								class="icon-map"></i> ${hotel.addressFull }</a></span> <span class="star">
							<c:forEach var="star" begin="1"
								end="${ hotel.starRating.amount }" step="1">
								<i class="icon-star"></i>

							</c:forEach>  <span>  ${hotel.evaluates.size() }   Rating</span>
						</span>
					</p>
					<p>${hotel.description }</p>
					
					
				</div>
				
				<div
					class="col-md-12 hotel-single ftco-animate mb-5 mt-4 fadeInUp ftco-animated">
					<h4 class="mb-4">Our Rooms</h4>
					<div class="row">
					<c:forEach var="room" items="${hotel.rooms }">
					
					<div class="col-md-4">
							<div class="destination">
								<a
									href="${pageContext.request.contextPath }/hotels/hotel_detail"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath }/uploads/images/${room.srcIcon });">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-link"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="#"> ${room.name} </a>
											</h3>
											
										</div>
										<div class="two">
											<span class="price per-price">${room.roomCategory.name} </span>
										</div>
									</div>
									<p >
												<span>Room type </span>${room.roomType.name }
												<br>
												<span>Amount Of Bed </span>${room.amountOfBed }

											</p>

								



									<div class="row">

										<div class="col-md-12">


											<span> <c:if test="${(room.copponRoom != null and room.copponRoom.status == true) or(room.hotel.copponHotel != null and room.hotel.copponHotel.status == true)}">
													<span style="text-decoration: line-through;">$ <fmt:formatNumber
															type="number" value="${room.price }"
															pattern="###,###" /><span> /night</span></span>
													<br>
												</c:if> $ <fmt:formatNumber type="number"
													value="${((room.price) * (100 - room.hotel.copponHotel.sale )/100)*(100 - room.copponRoom.sale)/100 }"
													pattern="###,###" /> <span>/night</span></span>
										</div>


									</div>

									<hr>
									<p class="bottom-area d-flex">

										
										<a href="#" class="meta-chat" style="color: black;"><span
											class="icon-chat"></span> ${ room.evaluates.size() }</a> <span
											class="ml-auto"><a
											href="#">Book
												Now</a></span>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
						
						
						
					</div>
				</div>

				<hr>

				<div
					class="col-md-12 hotel-single ftco-animate mb-5 mt-5 fadeInUp ftco-animated">
					<h4 class="mb-4">Related Hotels</h4>
					<div class="row">
					<c:forEach var="item" items="${hotelsRelated }">
						<div class="col-md-4">
							<div class="destination">
								<a
									href="${pageContext.request.contextPath }/hotels/hotel_detail"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath }/uploads/images/${item.image });">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-link"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="#"> ${item.name} </a>
											</h3>
											<p class="rate">
												<c:forEach var="star" begin="1"
													end="${ item.starRating.amount }" step="1">
													<i class="icon-star"></i>

												</c:forEach>


											</p>
										</div>
										<div class="two">
											<span class="price per-price"> <c:set var="quantity"
													value="${0 }">

												</c:set> <c:set var="tatolPrice" value="${0 }">

												</c:set> <c:forEach var="room" items="${ item.rooms }">
													<c:if
														test="${ room.status == true && room.amountOfRoom > 0 }">

														<c:set var="quantity"
															value="${ quantity + room.amountOfRoom }">
														</c:set>
														<c:set var="tatolPrice"
															value="${tatolPrice + (room.price * room.amountOfRoom ) }">
														</c:set>
													</c:if>
												</c:forEach>
										</div>
									</div>

									<span class="icon-map-marker"></span> <span>
										${item.ward} , ${item.city } </span> <br>
									<c:set var="numstar" value="${ 0 }"></c:set>
									<c:forEach var="evaluate" items="${item.evaluates }">

										<c:set var="numstar"
											value="${ numstar + evaluate.numberOfStars }"></c:set>

									</c:forEach>



									<div class="row">

										<div class="col-md-12">


											<span> <c:if
													test="${item.copponHotel != null and item.copponHotel.status == true }">
													<span style="text-decoration: line-through;">$ <fmt:formatNumber
															type="number" value="${tatolPrice / quantity }"
															pattern="###,###" /><span> /night</span></span>
													<br>
												</c:if> $ <fmt:formatNumber type="number"
													value="${(tatolPrice / quantity) * (100 -item.copponHotel.sale )/100 }"
													pattern="###,###" /> <span>/night</span></span>
										</div>


									</div>

									<hr>
									<p class="bottom-area d-flex">

										<c:if test="${((numstar / item.evaluates.size() )) > 3.5 }">
											<img alt="icon"
												src="${pageContext.request.contextPath }/resources/user/icon/home.png">

										</c:if>
										<a href="#" class="meta-chat" style="color: black;"><span
											class="icon-chat"></span> ${ item.evaluates.size() }</a> <span
											class="ml-auto"><a
											href="${pageContext.request.contextPath }/hotels/hotel_detail?address=${address }&checkin=${checkin }&checkout=${checkout }&guests=${guests }&room=${rooms}&id=${item.id}">Book
												Now</a></span>
									</p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>

			</div>
</section>

<section class="ftco-section-parallax">
	<div class="parallax-img d-flex align-items-center">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate fadeInUp ftco-animated">
					<h2>Subcribe to our Newsletter</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
					<div class="row d-flex justify-content-center mt-5">
						<div class="col-md-8">
							<form class="subscribe-form" action="#">
								<div class="form-group d-flex">
									<input class="form-control" type="text"
										placeholder="Enter email address"> <input
										class="submit px-3" type="submit" value="Subscribe">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>