<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<br>
<br>
<h3 style="text-align: center;">
	<i class="fa fa-building" style="color: #2E64FE;"></i>My Order
</h3>
<hr>
<div class="container-fluid">

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">

			<div class="row">
				<c:if test="${ms == 'ok' }">

					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-check"></i> Order Success !
						</h4>
						
Please check your email
					</div>
				</c:if>
				<c:if test="${ms == 'failed'}">
					<div class="alert alert-warning alert-dismissible">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-warning"></i>  error!
						</h4>
						error during booking
					</div>

				</c:if>
				<c:forEach var="orderdetai" items="${ordernew.orderDetails }">
					<div class="col-sm-12" style="background-color: #E6E6E6;">
						<div class="row">
							<div class="col-sm-3">
								<br> <img alt="room"
									src="${pageContext.request.contextPath }/uploads/images/${orderdetai.room.hotel.image}"
									style="width: 200px; height: 150px">
								<hr>
								<span style="font-weight: bold;">Hotel</span> <span>
									${orderdetai.room.hotel.name }</span>

							</div>
							<div class="col-sm-3">
								<br>
								<h4>
									<i class="fa fa-info" style="color: #2E64FE;"></i>Info
								</h4>
								<hr>
								<p>
									<span style="font-weight: bold;">Room</span> <span>${orderdetai.room.name }</span>
								</p>
								<span style="font-weight: bold;">Check in:</span> <span>${orderdetai.checkInDate}</span>
								</p>
								<p>
									<span style="font-weight: bold;">Check out:</span> <span>${orderdetai.checkOutDate}</span>
								</p>
								<p>
									<span style="font-weight: bold;">Amount of room:</span> <span>${orderdetai.quantity}</span>
								</p>
							</div>
							<div class="col-sm-3">
								<br>
								<h4>
									<i class="fa fa-home" style="color: #58ACFA;"></i>Room
								</h4>
								<hr>
								<p>
									<span style="font-weight: bold;">Room:</span> <span
										class="badge badge-info">${orderdetai.room.roomCategory.name }</span>
								</p>
								<p>
									<span style="font-weight: bold;">Type:</span> <span
										class="badge badge-secondary">${orderdetai.room.roomType.name }</span>
								</p>
								<p>
									<span style="font-weight: bold;">Bed:</span> <span
										class="badge badge-light">${orderdetai.room.bedType.name }</span>
								</p>
							</div>
							<div class="col-sm-3">
								<br>
								<h4>
									<i class="fa fa-check" style="color: #74DF00;"></i>Status
								</h4>
								<hr>
								<p>
									<span style="font-weight: bold;">Status:</span>
									<c:if test="${orderdetai.orders.payment != null  }">
										<span class="badge badge-success">Paid</span>
									</c:if>
									<c:if test="${orderdetai.orders.payment == null }">
										<span class="badge badge-danger">Pay at the hotel</span>


									</c:if>

								</p>
								<p>
									<c:set var="day"
										value="${orderdetai.checkOutDate.getTime() - orderdetai.checkInDate.getTime() }"></c:set>

									<span style="font-weight: bold;">Price:</span> <span
										style="color: #0080FF; font-weight: bold; font-size: 15px">
										$ ${orderdetai.room.price * orderdetai.quantity * day/86400000 }
									</span>
								</p>
								<p>
									<span style="font-weight: bold;">Sale off:</span> <span
										style="color: #0080FF; font-weight: bold; font-size: 15px;">-
										$ ${(orderdetai.room.price * orderdetai.quantity * day/86400000 ) * ( orderdetai.room.copponRoom.sale + orderdetai.room.hotel.copponHotel.sale)   /100  }
									</span>
								</p>
								<p>
									<span style="font-weight: bold;">Total:</span> <span
										style="color: #0431B4; font-weight: bold; font-size: 30px">$
										${orderdetai.room.price * orderdetai.quantity * day/86400000 - ((orderdetai.room.price * orderdetai.quantity * day/86400000 ) * ( orderdetai.room.copponRoom.sale + orderdetai.room.hotel.copponHotel.sale)   /100 )}</span>
								</p>

								<hr>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class="col-sm-2"></div>
	</div>
	<!-- end status -->

	<br> <br>

	<h3 style="text-align: center;">
		<i class="fa fa-calendar" style="color: #BDBDBD;"></i>History
	</h3>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<div class="col-sm-12" style="background-color: #E6E6E6;">
					<div class="container mt-3">
						<h2>My history order</h2>
						<p>Search</p>
						<input class="form-control" id="myInput" type="text"
							placeholder="Search.."> <br>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Hotel</th>
									<th>Room</th>
									<th>Price</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Detail</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<c:forEach var="orderde" items="${orders }">
									<c:forEach var="orderdetai" items="${orderde.orderDetails }">
										<c:set var="day"
											value="${orderdetai.checkOutDate.getTime() - orderdetai.checkInDate.getTime() }"></c:set>
										<tr>

											<td>${orderdetai.room.hotel.name }</td>
											<td>${orderdetai.room.name }</td>
											<td>$ ${orderdetai.room.price * orderdetai.quantity * day/86400000 - ((orderdetai.room.price * orderdetai.quantity * day/86400000 ) * ( orderdetai.room.copponRoom.sale + orderdetai.room.hotel.copponHotel.sale)   /100 )}</td>
											<td>${orderdetai.checkInDate }</td>
											<td>${orderdetai.checkOutDate }</td>
											<td><a href="#" style="color: #0080FF">Detail</a></td>
										</tr>
									</c:forEach>
								</c:forEach>

							</tbody>
							<thead>
								<tr>
									<th>Hotel</th>
									<th>Room</th>
									<th>Price</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Detail</th>
								</tr>
							</thead>
						</table>


					</div>

					<script>
						$(document)
								.ready(
										function() {
											$("#myInput")
													.on(
															"keyup",
															function() {
																var value = $(
																		this)
																		.val()
																		.toLowerCase();
																$("#myTable tr")
																		.filter(
																				function() {
																					$(
																							this)
																							.toggle(
																									$(
																											this)
																											.text()
																											.toLowerCase()
																											.indexOf(
																													value) > -1)
																				});
															});
										});
					</script>
				</div>
			</div>
		</div>

	</div>
	<div class="col-sm-2"></div>
</div>
<br>
<br>
<br>
<br>
<br>