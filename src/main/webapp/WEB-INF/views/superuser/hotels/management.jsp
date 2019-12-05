<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>

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
					<li><a href="#timeline" data-toggle="tab">All Order</a></li>
					<li><a href="#settings" data-toggle="tab">Confirm</a></li>
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


								<h2 class="box-title">Images</h2>
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
											<th>Status</th>
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
											<td>stt</td>
										
										
										
											<td>${ord.note }</td>
											
											<td>
											<c:if test="${ord.orders.status == true }">
											paid
											</c:if>
												<c:if test="${ord.orders.status == false }">
											uppaid
											</c:if>
											
											</td>
</tr>


										</c:forEach>




									</tbody>

									<tfoot>
										<tr>
										<th>Customer</th>
											<th>Email</th>
											<th>Check In</th>
											<th>Check out</th>
											<th>Status</th>
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
											
											<td>
											<c:if test="${ord.orders.status == true }">
											paid
											</c:if>
												<c:if test="${ord.orders.status == false }">
											uppaid
											</c:if>
											
											</td>
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
										<c:if test="${ord.checkInDate <= now && ord.checkOutDate >= now }">
										<tr>
											<td>${ord.namestaying }</td>
										<td>${ord.room.name }</td>
											<td>${ord.checkInDate }</td>
											<td>${ord.checkOutDate }</td>
											<td>${ord.quantity }</td>
										
										
											<td>${ord.note }</td>
											
											<td>
											<c:if test="${ord.orders.status == true }">
											paid
											</c:if>
												<c:if test="${ord.orders.status == false }">
											uppaid
											</c:if>
											
											</td>
</tr>
</c:if>

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
						<div class="tab-pane" id="store">
						okkkk
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
<script>
	$(document)
			.ready(
					function() {
						$("#example1 tbody tr")
								.on("click",function(event) {

											var id = $(this).find("td").eq(1).html();
											
											$.ajax({

														type : 'GET',

														url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/find/order',
														data : {
															id : id
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {
															
														var	s = ' ' ;
														
														for (var i = 0 ; i < result.length; i++) {
															
															s += '<tr><td>'+ result[i].namestaying +'</td>';
															s += '<td>'+ result[i].email + '</td>';
															s += '<td>'+ result[i].checkInDate +'</td>';
															s += '<td>'+ result[i].checkOutDate +'</td>';
															s += '<td>'+ result[i].status +'</td>';
															s += '<td>'+ result[i].note+'</td>';
															s +='<td>'+ result[i].orders.payment + '</td>';
															s +='</tr>';

															}
			
														
														$('#example5 tbody').html(s);

														}

													});

										});

					});
</script>

	