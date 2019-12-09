<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">

$('#clickToRoom').click(function() {
	$("html, body").animate({ scrollDown: $('#ourRoom').scrollDown() }, 1000);

	});


</script>
<br>
<div class="sidebar">
	<h3>Comment</h3>
	<!-- comment -->
	<c:forEach var="evaluate" items="${evaluates }">
		<div class="row">
			<div class="col align-self-start">
				<div class="row">
					<div class="col-2">
						<img
							src="${pageContext.request.contextPath }/uploads/images/${evaluate.account.avatar}"
							style="width: 30px" height="30px">
					</div>
					<div class="col-auto">
						<small><strong>${evaluate.account.username }</strong></small>
						<p>
							<small style="font-size: 10px"><i class="fas fa-calendar"></i>
								${evaluate.create }</small>
						</p>
						<i><c:forEach var="star" begin="1"
								end="${ evaluate.numberOfStars }" step="1">
								<small><i class="fa fa-star" style="color: orange;"></i></small>

							</c:forEach></i>
					</div>
				</div>
				<div class="container">
					<small><c:if test="${fn:length(evaluate.content) <= 65 }">
							<small>${evaluate.content }</small>
						</c:if> <c:if test="${fn:length(evaluate.content) > 65 }">


							<small>${fn:substring(evaluate.content ,0, 65)}...</small>


							<span style="font-size: 15px; cursor: pointer; color: blue"
								data-toggle="collapse" data-target="#demo_${evaluate.id  }">
								more...</span>


							<div id="demo_${evaluate.id  }" class="collapse">
								<small>${fn:substring(evaluate.content ,65, 2000)}</small>

							</div>

						</c:if> </small>
				</div>
			</div>
		</div>
	</c:forEach>
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-2">

			<div style="position: -webkit-sticky; position: sticky; top: 0;">





			</div>

		</div>
		<div class="col-sm-10">
			<div class="card">
				<h5 class="card-header">Hotel: ${hotel.name }</h5>
				<div class="card-body">
					<span><i><c:forEach var="star" begin="1"
								end="${ hotel.starRating.amount }" step="1">
								<i class="fa fa-star" style="color: orange;"></i>

							</c:forEach></i></span>
					<p class="card-text">
						<i class="fa fa-map-marker" style="color: #B1293E"></i>${hotel.addressFull }
					</p>
					<hr>
					<!-- image hotel -->
					<div >
						<div data-spy="scroll" data-target="#myScrollspy" data-offset="10"
							style="height: 600px; overflow-y: scroll; padding: 5px; border: 1px solid #ccc;">
							<c:forEach var="room" items="${hotel.rooms }">
								<c:forEach var="imgRoom" items="${room.imageRooms }">

								<img
									src="${pageContext.request.contextPath }/uploads/images/${imgRoom.src}"
									style="width: 100%" alt="${imgRoom.alt}">
								<hr>
							</c:forEach></c:forEach>
						</div>
					</div>

					<!-- /image hotel -->

					<!-- modal image -->

					<!-- 	<div class="row">
						<div class="col-12">
							<img
								src="${pageContext.request.contextPath }/uploads/images/${hotel.image}"
								style="width: 100%" onclick="openModal();"
								class="hover-shadow cursor">
						</div>
						<div class="roww">
							<c:forEach var="room" items="${hotel.rooms }">
								<c:if test="${room.srcIcon != null }">
									<div class="columnn">
										<img class="demo cursor"
											src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}"
											style="width: 100%"
											onclick="openModal();currentSlide(${room.id})"
											alt="${room.name}">
									</div>
								</c:if>
								
								
							</c:forEach>

						</div>
					</div> -->


					<!--  	<div id="myModal" class="modal">
						<span class="close cursor" onclick="closeModal()">&times;</span>
						<div class="modal-content">
							<c:forEach var="room" items="${hotel.rooms }">
								<c:forEach var="imgRoom" items="${room.imageRooms }">
									<div class="mySlides">
										<img
											src="${pageContext.request.contextPath }/uploads/images/${imgRoom.src}"
											style="width: 100%" onclick="currentSlide(${imgRoom.id})"
											alt="${imgRoom.alt}">
									</div>
								</c:forEach>
							</c:forEach>


							<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
								class="next" onclick="plusSlides(1)">&#10095;</a>

							<div class="caption-container">
								<p id="caption"></p>
							</div>

							<div class="roww">
								<c:forEach var="room" items="${hotel.rooms }">
									<c:forEach var="imgRoom" items="${room.imageRooms }">
										<div class="columnn">
											<img class="demo cursor"
												src="${pageContext.request.contextPath }/uploads/images/${imgRoom.src}"
												style="width: 100%" onclick="currentSlide(${imgRoom.id})"
												alt="${imgRoom.alt}">
										</div>
									</c:forEach>
								</c:forEach>

							</div>
						</div>
					</div>
					<hr>-->
					<!-- /modal image -->
					<br>
					<div class="container">
						<div class="row">
							<div class="col-6 col-md-4">
								<c:set var="numstar" value="${ 0 }"></c:set>
								<c:forEach var="evaluate" items="${hotels.evaluates }">

									<c:set var="numstar"
										value="${ numstar + evaluate.numberOfStars }"></c:set>

								</c:forEach>
								<i> <c:if test="${numstar/ evaluate.size() > 3.5 }">
										<img alt="icon"
											src="${pageContext.request.contextPath }/resources/user/icon/home.png">

									</c:if>
								</i>


							</div>
							<div class="col-6 col-md-4">
								<p>
									<i class="fas fa-comment" style="font-size: 30px"></i>(${ evaluates.size()})
								</p>

							</div>
							<div class="col-6 col-md-4">
								<!--  <p style="color: gray; text-decoration: line-through;">$5000/night</p>
								<h4 style="color: orange;">$5000/night</h4>-->
								<a href="" id="clickToRoom">click me</a>
								<input type="button" value="Book now" id="clickToRoom"
									style="background-color: #F0770C; color: white; padding: 12px; margin: 1px 0; border: none; width: 100%; border-radius: 3px; cursor: pointer; font-size: 17px;">
							</div>
						</div>
						<hr>
						<h4>Facilities</h4>
						<div class="row">
							<c:if test="${hotel.wifi == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fa fa-wifi"></i>
									</p>
									<strong>Free Wifi</strong>
								</div>
							</c:if>
							<c:if test="${hotel.swimmingPool == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fa fa-swimmer"></i>
									</p>
									<strong>Swimming pool</strong>
								</div>
							</c:if>
							<c:if test="${hotel.freeCancellation == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fas fa-remove"></i>
									</p>
									<strong>Free Cancellation</strong>
								</div>
							</c:if>
							<c:if test="${hotel.freeBreakfast == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fas fa-utensils"></i>
									</p>
									<strong>Restaurant</strong>
								</div>
							</c:if>
							<c:if test="${hotel.parking == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fas fa-car"></i>
									</p>
									<strong>parking</strong>
								</div>
							</c:if>
							<c:if test="${hotel.airConditioner == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fas fa-hdd"></i>
									</p>
									<strong>Air-Conditioner</strong>
								</div>
							</c:if>
							<c:if test="${hotel.spa == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fas fa-spa"></i>
									</p>
									<strong>Spa</strong>
								</div>
							</c:if>
							<c:if test="${hotel.receptionist == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<strong><sup>24</sup>/<sub>7</sub></strong>
									</p>
									<strong>Receptionist 24/7</strong>
								</div>
							</c:if>
							<c:if test="${hotel.airportTransfer == true }">
								<div class="col-auto">
									<p style="color: #00BFFF; font-size: 50px">
										<i class="fa fa-plane"></i>
									</p>
									<strong>Airport Transfer</strong>
								</div>
							</c:if>
						</div>
					</div>

				</div>
			</div>
			<br>
			<!-- end card 1 -->
			<div class="card">
				<h5 class="card-header">Detail and location</h5>
				<div class="card-body">
					<p class="card-text">
						<i class="fa fa-map-marker" style="color: #B1293E"></i>${hotel.addressFull }
					</p>
					<a href="" style="color: blue;">view on map</a>
				</div>
			</div>
			<!-- end card 2 -->
			<br>
			<div class="card" id="ourRoom">
				<h5 class="card-header">Our rooms</h5>
				<div class="card-body">
					<!-- hotels -->

					<c:forEach var="room" items="${hotel.rooms }">
						<div class="card">

							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-6 col-md-4">
											<p>
												<img
													src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon }"
													alt="room" style="width: 200px; height: 200px">
											</p>


											<!-- Button trigger modal -->
											<button type="button" class="btn btn-outline-info"
												data-toggle="modal" data-target=".bd-example-modal-lg">
												Detail of Room</button>



											<div class="modal fade bd-example-modal-lg" tabindex="-1"
												role="dialog" aria-labelledby="myLargeModalLabel"
												aria-hidden="true">
												<div class="modal-dialog modal-lg">

													<div class="modal-content">
														<br>
														<h5 style="text-align: center;">${room.name}</h5>
														<hr>
														<div class="container">
															<div class="row">
																<div class="col-6 col-md-8">
																	<div data-spy="scroll" data-target="#myScrollspy"
																		data-offset="10"
																		style="height: 400px; overflow-y: scroll; padding: 5px; border: 1px solid #ccc;">
																		<c:forEach var="imgRoom" items="${room.imageRooms }">

																			<img
																				src="${pageContext.request.contextPath }/uploads/images/${imgRoom.src}"
																				style="width: 100%" alt="${imgRoom.alt}">
																			<hr>
																		</c:forEach>
																	</div>
																</div>
																<div class="col-6 col-md-4">
																	<small style="color: red">( <span
																		class="badge badge-danger">${room.amountOfRoom }</span>
																		room(s) available)
																	</small>
																	<hr>
																	<p class="badge badge-info">${room.roomCategory.name }
																	</p>
																	<p class="badge badge-secondary">Room
																		${room.roomType.name }</p>
																	<hr>
																	<p>
																		<i class="fa fa-user"></i>${room.capacity } Guest
																	</p>
																	<p>
																		<i class="fa fa-bed"></i>${room.amountOfBed }
																		${room.bedType.name }
																	</p>
																	<hr>
																	<c:if test="${room.hotel.wifi == true }">
																		<p style="color: green;">
																			<i class="fa fa-wifi"></i>Free wifi
																		</p>
																	</c:if>
																	<c:if test="${room.hotel.swimmingPool == true }">
																		<p style="color: green;">
																			<i class="fa fa-swimmer"></i>Swimming pool
																		</p>
																	</c:if>
																	<c:if test="${room.hotel.freeCancellation == true }">
																		<p style="color: green;">
																			<i class="fas fa-remove"></i>Free Cancellation
																		</p>
																	</c:if>
																	<c:if test="${room.hotel.freeBreakfast == true }">
																		<p style="color: green;">
																			<i class="fas fa-utensils"></i>Free Breakfast
																		</p>
																	</c:if>

																	<hr>
																	<p style="color: green;">Save 30%</p>
																	<p style="text-decoration: line-through; color: gray;">$200</p>
																	<h5 style="color: #2E64FE">
																		${room.price } <span>/night</span>
																	</h5>

																	<hr>
																	<a
																		style="background-color: #F0770C; color: white; padding: 12px; margin: 1px 0; border: none; width: 100%; border-radius: 3px; cursor: pointer; font-size: 17px;"
																		href="${pageContext.request.contextPath }/booking?roomid=${room.id }&checkin=${checkin }&checkout=${checkout }&room=${rooms}">Book
																		Now</a> <br> <br>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>

											<!--  -->
										</div>

										<div class="col-6 col-md-5">
											<h5>${room.name}</h5>
											<hr>
											<div class="container">
												<div class="row">
													<div class="col-6 col-md-6">
														<p class="badge badge-info">${room.roomCategory.name }
														</p>
														<p class="badge badge-secondary">Room
															${room.roomType.name }</p>

														<c:if test="${room.hotel.wifi == true }">
															<p style="color: green;">
																<i class="fas fa-wifi"></i>Free wifi
															</p>
														</c:if>
														<c:if test="${room.hotel.swimmingPool == true }">
															<p style="color: green;">
																<i class="fa fa-swimmer"></i>Swimming pool
															</p>
														</c:if>
													</div>
													<div class="col-6 col-md-6">
														<p>
															<i class="fa fa-user"></i>${room.capacity } Guest
														</p>
														<p>
															<i class="fa fa-bed"></i>${room.amountOfBed }
															${room.bedType.name }
														</p>

														<c:if test="${room.hotel.freeCancellation == true }">
															<p style="color: green;">
																<i class="fas fa-remove"></i>Free Cancellation
															</p>
														</c:if>
														<c:if test="${room.hotel.freeBreakfast == true }">
															<p style="color: green;">
																<i class="fas fa-utensils"></i>Free Breakfast
															</p>
														</c:if>
													</div>
												</div>
											</div>
										</div>

										<div class="col-6 col-md-3">
											<small style="color: red">( <span
												class="badge badge-danger">${room.amountOfRoom }</span>
												room(s) available)
											</small>
											<hr>
											<p style="color: green;">Save 30%</p>
											<p style="text-decoration: line-through; color: gray;">$200</p>
											<h5 style="color: #2E64FE">
												${room.price } <span>/night</span>
											</h5>

											<hr>
											<a
												style="background-color: #F0770C; color: white; padding: 12px; margin: 1px 0; border: none; width: 100%; border-radius: 3px; cursor: pointer; font-size: 17px;"
												href="${pageContext.request.contextPath }/booking?roomid=${room.id }&checkin=${checkin }&checkout=${checkout }&room=${rooms}">Book
												Now</a>


										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
					</c:forEach>
				</div>
			</div>
		</div>


	</div>
</div>
<br>