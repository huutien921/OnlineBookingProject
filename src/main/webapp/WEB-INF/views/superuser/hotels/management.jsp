<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<section class="content">

	<div class="row">

		<div class="col-md-12">
			<div class="nav-tabs-custom">
				<c:if test="${ms == 'ok' }">

					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-check"></i> Successfully Created!
						</h4>
						Created information has been saved.
					</div>
				</c:if>
				<c:if test="${ms == 'noImageDesription'}">
					<div class="alert alert-warning alert-dismissible">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-warning"></i> Successfully Created !
						</h4>
						Created information has been saved . However, there are no
						description images
					</div>

				</c:if>

				<ul class="nav nav-tabs">
					<li class="active"><a href="#activity" data-toggle="tab">Rooms</a></li>
					<li><a href="#timeline" data-toggle="tab">Customers</a></li>
					<li><a href="#settings" data-toggle="tab">Rooms booked</a></li>
					<li><a href="#checkin" data-toggle="tab">Check in</a></li>
					<li><a href="#store" data-toggle="tab">Store Service</a></li>
				</ul>
				<div class="tab-content">
					<div class="active tab-pane" id="activity">
						<!-- rooms -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>Image</th>
										<th>ID</th>
										<th>Name</th>
										<th>Price</th>
										<th>Amount Room</th>
										<th>Empty room</th>
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="room" items="${hotel.rooms }">
										<c:set var="roomEmty" value="0"></c:set>

										<tr class="rows">

											<td><img
												class="profile-user-img img-responsive img-rounded"
												style="width: 70px"
												src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}"
												alt="Image Room"></td>
											<td>${room.id }</td>
											<td>${room.name}</td>
											<td>${room.price }</td>
											<td>${room.amountOfRoom }</td>
											<td><c:forEach var="orderdetail"
													items="${room.orderDetails }">
													<c:if
														test="${orderdetail.checkOutDate > now and orderdetail.orders.status == true and orderdetail.checkInDate < now and orderdetail.room.id == room.id}"></c:if>
													<c:set var="roomEmty"
														value="${roomEmty + orderdetail.quantity }"></c:set>

												</c:forEach> ${room.amountOfRoom - roomEmty}</td>
											<td>${room.status ? '<p class="text-muted text-center" style="color: #0033cc ;"><i class="fa fa-fw fa-check-square"></i></p>' : '<p class="text-muted text-center" style="color: #ff0000 ;"><i class="fa fa-fw fa-minus-square"></i></p>' }</td>

										</tr>


									</c:forEach>
								<tfoot>
									<tr>
										<th>Image</th>
										<th>ID</th>
										<th>Name</th>
										<th>Price</th>
										<th>Amount Room</th>
										<th>Empty room</th>
										<th>Status</th>
									</tr>
								</tfoot>
							</table>
						</div>

						<div class="box box-default">
							<div class="box-header with-border">


								<h2 class="box-title" style="color: blue;">List of guests
									currently in the room</h2>
							</div>
							<!-- /.box-header -->
							<div class="box-body">

								<table id="example5" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Customer</th>
											<th>Email</th>
											<th>Check In</th>
											<th>Check out</th>

											<th>Note</th>
											<th>Payment</th>

										</tr>
									</thead>
									<tbody>


										<c:forEach var="ord" items="${orderdetail}">
											<tr>
												<td>${ord.namestaying }</td>
												<td>${ord.email }</td>
												<td>${ord.checkInDate }</td>
												<td>${ord.checkOutDate }</td>




												<td>${ord.note }</td>

												<td><c:if test="${ord.orders.payment == 'payathotel' }">
											Pay at hotel
											</c:if> <c:if test="${ord.orders.payment != 'payathotel' }">
											Paid
											</c:if></td>
											</tr>


										</c:forEach>




									</tbody>

									<tfoot>
										<tr>
											<th>Customer</th>
											<th>Email</th>
											<th>Check In</th>
											<th>Check out</th>

											<th>Note</th>
											<th>Payment</th>

										</tr>
									</tfoot>
								</table>

							</div>

						</div>


					</div>

					<div class="tab-pane" id="timeline">
						<div class="row">
							<div class="col-md-12">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Name Customer</th>
											<th>Room name</th>
											<th>Check In</th>
											<th>Check out</th>
											<th>Quantity</th>


											<th>Note</th>
											<th>Payment</th>

										</tr>
									</thead>
									<tbody>


										<c:forEach var="ord" items="${orderdetail}">
											<tr>
												<td>${ord.namestaying }</td>
												<td>${ord.room.name }</td>
												<td>${ord.checkInDate }</td>
												<td>${ord.checkOutDate }</td>
												<td>${ord.quantity }</td>


												<td>${ord.note }</td>

											<td><c:if test="${ord.orders.payment == 'payathotel' }">
											Pay at hotel
											</c:if> <c:if test="${ord.orders.payment != 'payathotel' }">
											Paid
											</c:if></td>
											</tr>


										</c:forEach>




									</tbody>

									<tfoot>
										<tr>
											<th>Name Customer</th>
											<th>Room name</th>
											<th>Check In</th>
											<th>Check out</th>
											<th>Quantity</th>


											<th>Note</th>
											<th>Payment</th>

										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>



					<div class="tab-pane" id="settings">

						<table id="example4" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Customer</th>
									<th>Email</th>
									<th>Room</th>
									<th>Payment</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Quantity</th>
									<th>Note</th>


								</tr>
							</thead>
							<tbody>


								<c:forEach var="reserve" items="${reserves}">

									<tr>
										<td>${reserve.orders.account.fullname }</td>
										<td>${reserve.email}</td>
										<td>${reserve.room.name }</td>
										<td>${reserve.orders.payment }</td>
										<td>${reserve.checkInDate }</td>
										<td>${reserve.checkOutDate }</td>
										


										<td>${reserve.note }</td>

										<td><c:if test="${reserve.orders.payment == 'payathotel' }">
											Pay at hotel
											</c:if> <c:if test="${reserve.orders.payment != 'payathotel' }">
											Paid
											</c:if></td>
									</tr>


								</c:forEach>




							</tbody>

							<tfoot>
							<tr>
								<th>Customer</th>
									<th>Email</th>
									<th>Room</th>
									<th>Payment</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Quantity</th>
									<th>Note</th>

								</tr>
							</tfoot>
						</table>

					</div>
					<div class="tab-pane" id="store">
						<div class="row">
							<c:forEach var="service" items="${services }">

								<div class="col-sm-4">
									<a href="/promotions/detail/8"><img alt="promo"
										src="/uploads/images/${service.iconSrc }"
										style="width: 250px; height: 200px"></a>
									<h5 style="color: gray;">Name: ${service.name }</h5>
									<h5 style="color: gray;">Price:$ ${service.price } /month
									</h5>
									<h5 style="color: gray;">Priority: ${service.priority }</h5>
									<div class="row">
										<div class="col-sm-12">
											<small style="color: gray;"> ${ service.description}
											</small>
										</div>
										<div class="col">
											<a
												href="/superuser/servicehotel/buyService/${service.id }/${hotel.id}"
												class="btn btn-outline-info">buy</a>
										</div>
									</div>
									<hr>
								</div>
							</c:forEach>


						</div>
					</div>
					<div class="tab-pane" id="checkin">
					
					<table id="example6" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Customer</th>
									<th>Email</th>
									<th>Room</th>
									<th>Payment</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Quantity</th>
									<th>Note</th>
									<th>Action</th>


								</tr>
							</thead>
							<tbody>


								<c:forEach var="checkins" items="${checkinRoom}">

									<tr>
										<td>${checkins.orders.account.fullname }</td>
										<td>${checkins.email}</td>
										<td>${checkins.room.name }</td>
										<td>${checkins.orders.payment }</td>
										<td>${checkins.checkInDate }</td>
										<td>${checkins.checkOutDate }</td>
										


										<td>${checkins.note }</td>

										<td><c:if test="${checkins.orders.payment == 'payathotel' }">
											Pay at hotel
											</c:if> <c:if test="${checkins.orders.payment != 'payathotel' }">
											Paid
											</c:if></td>
											<td><span id="confirmBill${checkins.id }"><button  class="btn btn-block  btn-primary" onclick="confirm(${checkins.id})" >Checked in</button></span></td>
									</tr>


								</c:forEach>




							</tbody>

							<tfoot>
							<tr>
									<th>Customer</th>
									<th>Email</th>
									<th>Room</th>
									<th>Payment</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Quantity</th>
									<th>Note</th>
									<th>Action</th>

								</tr>
							</tfoot>
						</table>
					</div>

				</div>

			</div>

		</div>

	</div>


</section>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
function confirm(id){
	
	$
	.ajax({
	
		type : 'GET',
		

		url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/confirm',
		data : {
		id : id
		},
		dataType : 'text',
		contentType : 'aplication/json',
		success : function(
				result) {
			
			if(result == "OK"){
				alert("Successful confirmation") ;
				var s = '<p class="text-muted text-center" style="color: #0033cc ;"><i class="fa fa-fw fa-check-square"></i></p>';
					$('#confirmBill' + id).html(s);
		
				}else{
					alert("Failed confirmation") ;
					
					}
			
			
		
			}
		

	});
	
	
}
</script>
<script>
	$(document)
			.ready(
					function() {
						$("#example1 tbody tr")
								.on(
										"click",
										function(event) {

											var id = $(this).find("td").eq(1)
													.html();

											$
													.ajax({

														type : 'GET',

														url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/find/order',
														data : {
															id : id
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {

															var s = ' ';

															for (var i = 0; i < result.length; i++) {

																s += '<tr><td>'
																		+ result[i].namestaying
																		+ '</td>';
																s += '<td>'
																		+ result[i].email
																		+ '</td>';
																s += '<td>'
																		+ result[i].checkInDate
																		+ '</td>';
																s += '<td>'
																		+ result[i].checkOutDate
																		+ '</td>';

																s += '<td>'
																		+ result[i].note
																		+ '</td>';
																s += '<td>'
																		+ result[i].orders.payment
																		+ '</td>';
																s += '</tr>';

															}

															$('#example5 tbody')
																	.html(s);

														}

													});

										});

					});
</script>

