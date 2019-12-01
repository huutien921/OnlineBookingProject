<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<section class="content">

	<div class="row">
		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img class="profile-user-img img-responsive img-circle"
						src="${pageContext.request.contextPath }/uploads/images/${hotel.image}"
						alt="User profile picture">

					<h3 class="profile-username text-center">${hotel.name }</h3>

					<p class="text-muted text-center">${hotel.country }</p>

					<ul class="list-group list-group-unbordered">
						<li class="list-group-item"><b>Star rating</b> <c:if
								test="${hotel.starRating.amount == 1 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i>
								</a>
							</c:if> <c:if test="${hotel.starRating.amount == 2 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i><i
									class="glyphicon glyphicon-star"></i>
								</a>
							</c:if> <c:if test="${hotel.starRating.amount == 3 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i><i
									class="glyphicon glyphicon-star"></i><i
									class="glyphicon glyphicon-star"></i>
								</a>
							</c:if> <c:if test="${hotel.starRating.amount == 4 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"><i
										class="glyphicon glyphicon-star"></i><i
										class="glyphicon glyphicon-star"></i><i
										class="glyphicon glyphicon-star"></i></i>
								</a>
							</c:if> <c:if test="${hotel.starRating.amount == 5 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"><i
										class="glyphicon glyphicon-star"></i><i
										class="glyphicon glyphicon-star"></i><i
										class="glyphicon glyphicon-star"></i><i
										class="glyphicon glyphicon-star"></i></i>
								</a>
							</c:if></li>
						<li class="list-group-item"><b>Following</b> <a
							class="pull-right">543</a></li>
					</ul>
					
						
						<c:if
							test="${hotel.status == false && hotel.accountByIdAcEmployee == null }">
							<a
								href="${pageContext.request.contextPath }/employee/partner/updateActive/${hotel.id}"
								class="btn btn-success btn-block"><b>Active</b></a>
							<br>
							
							<a
								href="${pageContext.request.contextPath }/employee/partner/updateUnactive/${hotel.id}"
								class="btn btn-danger btn-block"><b>UnActive</b></a>
						</c:if>
						<c:if
							test="${hotel.status == false && hotel.accountByIdAcEmployee != null }">

							<p style="color: red">UnActive by
								${hotel.accountByIdAcEmployee.fullname }</p>

							<a
								href="${pageContext.request.contextPath }/employee/partner/updateActive/${hotel.id}"
								class="btn btn-success btn-block"><b>Active</b></a>
						</c:if>
						<c:if
							test="${hotel.status == true && hotel.accountByIdAcEmployee != null }">

							<p style="color: green">Active by
								${hotel.accountByIdAcEmployee.fullname }</p>

							<a
								href="${pageContext.request.contextPath }/employee/partner/updateUnactive/${hotel.id}"
								class="btn btn-danger btn-block"><b>UnActive</b></a>
						</c:if>
				
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->

			<!-- About Me Box -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">About</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<strong><i class="fa fa-book margin-r-5"></i>Hotel
						description</strong>

					<p class="text-muted">${hotel.description }</p>

					<hr>

					<strong><i class="fa fa-map-marker margin-r-5"></i>
						Location</strong>

					<p class="text-muted">${hotel.addressFull }</p>

					<hr>

					<strong><i class="fa fa-pencil margin-r-5"></i> Utilities</strong>

					<p>
						<c:if test="${hotel.gym == true }">
							<span class="label label-danger">Gym</span>
						</c:if>
						<c:if test="${hotel.wifi == true }">
							<span class="label label-info">Wifi</span>
						</c:if>
						<c:if test="${hotel.spa == true }">
							<span class="label label-success">Spa</span>
						</c:if>
						<c:if test="${hotel.parking == true }">
							<span class="label label-warning">Parking</span>
						</c:if>
						<c:if test="${hotel.carRental == true }">
							<span class="label label-danger">Car rental</span>
						</c:if>
						<c:if test="${hotel.airportTransfer == true }">
							<span class="label label-info">Airport transfer</span>
						</c:if>
						<c:if test="${hotel.swimmingPool == true }">
							<span class="label label-info">Swimming pool</span>
						</c:if>
						<c:if test="${hotel.freeBreakfast == true }">
							<span class="label label-warning">Free Breakfast</span>
						</c:if>
						<c:if test="${hotel.elevator == true }">
							<span class="label label-primary">Elevator</span>
						</c:if>
						<c:if test="${hotel.receptionist == true }">
							<span class="label label-danger">Receptionist</span>
						</c:if>
						<c:if test="${hotel.airConditioner == true }">
							<span class="label label-primary">Air-conditioner</span>
						</c:if>
						<c:if test="${hotel.freeCancellation == true }">
							<span class="label label-success">Free cancellation</span>
						</c:if>
						<c:if test="${hotel.payAtHotel == true }">
							<span class="label label-warning">Pay at hotel</span>
						</c:if>
						<c:if test="${hotel.assemblyFacilites == true }">
							<span class="label label-danger">Assembly facilites</span>
						</c:if>
						<c:if test="${hotel.driveway == true }">
							<span class="label label-info">Driveway</span>
						</c:if>


					</p>


				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
		<div class="col-md-9">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#activity" data-toggle="tab"
						aria-expanded="true">News</a></li>
					<li class=""><a href="#timeline" data-toggle="tab"
						aria-expanded="false">Confimred</a></li>
					<li class=""><a href="#settings" data-toggle="tab"
						aria-expanded="false">Refused</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="activity">
<h3>New Room</h3>
						<c:forEach var="room" items="${roomNew}">
							<div class="post">
								<div class="card">

									<div class="card-body">
										<div class="container">
											<div class="row">
												<div class="col-6 col-md-3">
													<p>
														<img
															src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon }"
															alt="room" style="width: 200px; height: 200px">
													</p>


													<!-- Button trigger modal -->
													<button type="button" class="btn btn-outline-info"
														data-toggle="modal" data-target=".bd-example-modal-lg">
														Detail of Room</button>
													<br>
													<hr>



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
																						style="width: 100%"
																						"
											alt="${imgRoom.alt}">
																					<hr>
																				</c:forEach>
																			</div>
																		</div>
																		<div class="col-6 col-md-3">
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
																			<p
																				style="text-decoration: line-through; color: gray;">$200</p>
																			<h5 style="color: #2E64FE">
																				${room.price } <span>/night</span>
																			</h5>

																			<hr>
																			<br> <br>
																		</div>
																	</div>
																</div>

															</div>
														</div>
													</div>

													<!--  -->
												</div>

												<div class="col-6 col-md-3">
													<strong>${room.name}</strong>
													<hr>
													<div class="container">
														<div class="row">
															<div class="col-6 col-md-2">
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
															<div class="col-6 col-md-2">
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

												<div class="col-6 col-md-2">
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



												</div>
											</div>
										</div>
									</div>
								</div>

								<form class="form-horizontal">
									<div class="form-group margin-bottom-none">
										<div class="col-sm-9">
											<input class="form-control input-sm" placeholder="Response">
										</div>
										<div class="col-sm-3">
											<a href="${pageContext.request.contextPath }/employee/partner/activeRoom/${room.id}"
												class="btn btn-success pull-right btn-block btn-sm">Active</a>
										</div>
									</div>
								</form>
							</div>
							<!-- /.post -->
						</c:forEach>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="timeline">
					<h3>Room confimred</h3>
						<!-- Post -->
						<c:forEach var="room" items="${roomConfimred}">
							<div class="post">
								<div class="card">

									<div class="card-body">
										<div class="container">
											<div class="row">
												<div class="col-6 col-md-3">
													<p>
														<img
															src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon }"
															alt="room" style="width: 200px; height: 200px">
													</p>


													<!-- Button trigger modal -->
													<button type="button" class="btn btn-outline-info"
														data-toggle="modal" data-target=".bd-example-modal-lg">
														Detail of Room</button>
													<br>
													<hr>



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
																						style="width: 100%"
																						"
											alt="${imgRoom.alt}">
																					<hr>
																				</c:forEach>
																			</div>
																		</div>
																		<div class="col-6 col-md-3">
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
																			<p
																				style="text-decoration: line-through; color: gray;">$200</p>
																			<h5 style="color: #2E64FE">
																				${room.price } <span>/night</span>
																			</h5>

																			<hr>
																			<br> <br>
																		</div>
																	</div>
																</div>

															</div>
														</div>
													</div>

													<!--  -->
												</div>

												<div class="col-6 col-md-3">
													<strong>${room.name}</strong>
													<hr>
													<div class="container">
														<div class="row">
															<div class="col-6 col-md-2">
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
															<div class="col-6 col-md-2">
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

												<div class="col-6 col-md-2">
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



												</div>
											</div>
										</div>
									</div>
								</div>

								<form class="form-horizontal">
									<div class="form-group margin-bottom-none">
										<div class="col-sm-9">
											<input class="form-control input-sm" placeholder="Response">
										</div>
										<div class="col-sm-3">
											<a href="${pageContext.request.contextPath }/employee/partner/unActiveRoom/${room.id}"
												class="btn btn-danger pull-right btn-block btn-sm">UnActive</a>
										</div>
									</div>
								</form>
							</div>
							<!-- /.post -->
						</c:forEach>
						<!-- /.post -->
					</div>
					<!-- /.tab-pane -->

					<div class="tab-pane" id="settings">
						<!-- Post -->
						
							<!-- /.post -->
						
					</div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
			<!-- /.nav-tabs-custom -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

</section>