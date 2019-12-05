<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section class="content">

	<div class="row">

		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img class="profile-user-img img-responsive img-rounded"
						src="${pageContext.request.contextPath }/uploads/images/${hotel.image}"
						alt="hotel image">

					<h3 class="profile-username text-center">${hotel.name }</h3>
					<c:if test="${hotel.accountByIdAcEmployee == null }">
						<p class="text-muted text-center" style="color: #e68a00;">
							<i class="fa fa-fw fa-hourglass"></i>Awaiting
						</p>

					</c:if>
					<c:if
						test="${hotel.accountByIdAcEmployee != null and hotel.status == true }">
						<p class="text-muted text-center" style="color: #0033cc;">
							<i class="fa fa-fw fa-check-square"></i>Active
						</p>

					</c:if>

					<c:if
						test="${hotel.accountByIdAcEmployee != null and hotel.status == false }">
						<p class="text-muted text-center" style="color: #ff0000;">
							<i class="fa fa-fw fa-times"></i> Prohibit
						</p>

					</c:if>

					<ul class="list-group list-group-unbordered">
						<li class="list-group-item"><c:set var="amountRoom" value="0"></c:set>

							<c:set var="roomAvailable" value="0"></c:set> <c:forEach
								var="room" items="${hotel.rooms }">
								<c:if test="${room.status !=null}">

									<c:set var="amountRoom"
										value="${amountRoom + room.amountOfRoom }"></c:set>
								</c:if>
								<c:forEach var="orderdetail" items="${room.orderDetails }">
									<c:if
										test="${orderdetail.checkOutDate > now and orderdetail.orders.status == true and orderdetail.checkInDate < now}"></c:if>
									<c:set var="roomAvailable"
										value="${roomAvailable + orderdetail.quantity }"></c:set>
								</c:forEach>
							</c:forEach> <b>Amount Room </b> <a class="pull-right">${ amountRoom}</a></li>

						<li class="list-group-item"><b>Rooms available</b> <a
							class="pull-right">${amountRoom -roomAvailable }</a></li>

					</ul>
					<div class="row">
						<div class="col-md-6">
							<a
								href="${pageContext.request.contextPath }/superuser/myhotel/edit/${hotel.id}"
								class="btn btn-block btn-danger"><i class="fa fa-edit"></i>
								Update </a>
						</div>
						<div class="col-md-6">
							<a
								href="${pageContext.request.contextPath }/superuser/myroom/create/${hotel.id}"
								class="btn  btn-primary"><i class="fa fa-fw fa-plus"></i>Add
								Room </a>

						</div>
					</div>

				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->

			<!-- About Me Box -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Hotel Information</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">



					<strong><i class="fa fa-map-marker margin-r-5"></i>
						Location</strong>

					<p class="text-muted">${hotel.addressFull }</p>

					<hr>

					<strong><i class="fa fa-pencil margin-r-5"></i>
						Convenients</strong>

					<p>
						<c:if test="${hotel.wifi }">
							<span class="label label-danger"> <i
								class="fa fa-fw fa-feed"></i> Wifi
							</span>
						</c:if>
						<c:if test="${hotel.parking }">
							<span class="label label-danger"> <i
								class="fa fa-fw fa-car"></i> Parking
							</span>
						</c:if>
						<c:if test="${hotel.spa }">
							<span class="label label-success"><i
								class="fa fa-fw fa-heart"></i> Spa</span>
						</c:if>
						<c:if test="${hotel.gym }">
							<span class="label label-success"><i
								class="fa fa-fw fa-heartbeat"></i> Gym</span>
						</c:if>
						<c:if test="${hotel.carRental }">
							<span class="label label-primary"><i
								class="fa fa-fw fa-car"></i> Car Rental</span>
						</c:if>
						<c:if test="${hotel.airportTransfer }">
							<span class="label label-danger"><i
								class="fa fa-fw fa-plane"></i> Airport transfers</span>
						</c:if>
						<c:if test="${hotel.freeBreakfast }">
							<span class="label label-warning"><i
								class="fa fa-fw fa-cutlery"></i> Breakfast</span>
						</c:if>
						<c:if test="${hotel.elevator }">
							<span class="label label-danger"><i
								class="fa fa-fw fa-square"></i> Elevator</span>
						</c:if>
						<c:if test="${hotel.swimmingPool }">
							<span class="label label-info"><i
								class="fa fa-fw fa-life-buoy"></i> Swimming Pool</span>
						</c:if>
						<c:if test="${hotel.receptionist }">
							<span class="label label-warning"><i
								class="fa fa-fw fa-user"></i> Receptionist </span>
						</c:if>
						<c:if test="${hotel.airConditioner }">
							<span class="label label-info"><i
								class="fa fa-fw fa-spinner"></i> AirConditioner</span>
						</c:if>
						<c:if test="${hotel.freeCancellation }">
							<span class="label label-danger"><i
								class="fa fa-fw fa-close"></i> Free Cancellation</span>
						</c:if>

						<c:if test="${hotel.assemblyFacilites }">
							<span class="label label-primary"><i
								class="fa fa-fw fa-users"></i> Meeting</span>
						</c:if>
						<c:if test="${hotel.driveway }">
							<span class="label label-success"><i
								class="fa fa-fw fa-bicycle"></i> Driveway</span>
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
					<li><a href="#timeline" data-toggle="tab">Discounts</a></li>
					<li><a href="#settings" data-toggle="tab">Analytics</a></li>
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
								<div id="resss" class="row margin-bottom">
									<div class="col-sm-6">
										<br> <img class="img-responsive img-rounded"
											src="${pageContext.request.contextPath }/uploads/images/${hotel.image}"
											alt="${hotel.name }">
									</div>
									<!-- /.col -->
									<div class="col-sm-6">
										<div class="row">
											<c:forEach var="room" items="${hotel.rooms }">
												<c:if test="${room.status == true }">
													<div class="col-sm-6">
														<br> <img class="img-responsive img-rounded"
															src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}"
															alt="Photo">
													</div>


												</c:if>
											</c:forEach>

										</div>

									</div>



								</div>

								<!--  resss -->
							</div>

						</div>


					</div>

					<div class="tab-pane" id="timeline">
						<div class="row">
							<div class="col-md-6">
								<div class="box-header with-border">
									<h3 class="box-title">Coppon Room</h3>

								</div>
								<div class="box-body" id="tb"></div>
								<form role="form">
									<div class="box-body">
										<div class="form-group">
											<label>Rooms Apply</label> <select id="roomId"
												required="required" class="form-control select2"
												multiple="multiple" data-placeholder="Select a room"
												style="width: 100%;">

												<c:forEach var="room" items="${hotel.rooms }">
													<option value="${room.id }">${room.name }</option>
												</c:forEach>


											</select>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Discount name</label> <input
												type="text" class="form-control" id="disName"
												placeholder="Discount name">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Discount value (%)</label>
											<input type="number" class="form-control" min="0" max="100"
												id="disVal" placeholder="Discount value">
										</div>

										<div class="checkbox">
											<label> <input id="status" type="checkbox">
												Active now
											</label>
										</div>

									</div>
									<!-- /.box-body -->

									<div class="box-footer">
										<button type="button" id="btroom" class="btn btn-primary">Submit</button>
										<input id="hotelId" value="${hotel.id }" type="hidden">
									</div>
								</form>
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Room</th>
											<th>Discount</th>
											<th>Value</th>
											<th>Status</th>

										</tr>
									</thead>
									<tbody>


										<c:forEach var="room" items="${ hotel.rooms}">
											<c:if
												test="${room.status == true and room.copponRoom != null}">
												<tr>
													<td>${room.name }</td>
													<td>${room.copponRoom.name }</td>
													<td>${Math.round(room.copponRoom.sale) }%</td>
													<td>${room.copponRoom.status ? 'Active' : 'Inactive' }</td>
												</tr>
											</c:if>



										</c:forEach>




									</tbody>

									<tfoot>
										<tr>
											<th>Room</th>
											<th>Discount</th>
											<th>Value</th>
											<th>Status</th>

										</tr>
									</tfoot>
								</table>
							</div>
							<div class="col-md-6">
								<div class="box-header with-border">
									<h3 class="box-title">Coppon ${hotel.name }</h3>

								</div>
								<div class="box-body" id="tbHotel"></div>
								<form role="form">
									<div class="box-body">

										<div class="form-group">
											<label for="exampleInputEmail1">Discount name</label> <input
												type="text" class="form-control" id="disNameHotel"
												value="${hotel.copponHotel.name }"
												placeholder="Discount name">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Discount value (%)</label>
											<input type="number" class="form-control" min="0" max="100"
												id="disValHotel" placeholder="Discount value"
												value="${hotel.copponHotel.sale }">
										</div>

										<div class="checkbox">
											<label> <input id="statusHotel"
												${hotel.copponHotel.status ? 'checked' :''} type="checkbox">
												Active now
											</label>
										</div>

									</div>
									<!-- /.box-body -->

									<div class="box-footer">
										<button type="button" id="btHotel" class="btn btn-primary">Submit</button>
										<input id="copponHotelId"
											value="<c:if test="${hotel.copponHotel.id == null }">0</c:if><c:if test="${hotel.copponHotel.id != null }">${hotel.copponHotel.id }</c:if>"
											type="hidden">
									</div>
								</form>
								<table id="tbHotel" class="table table-bordered table-hover">
									<thead>
										<tr>

											<th>Discount</th>
											<th>Progress</th>
											<th style="width: 40px">Value</th>
											<th>Status</th>
										</tr>

									</thead>

									<tbody>
										<c:if test="${hotel.copponHotel != null }">
											<tr>

												<td>${hotel.copponHotel.name }</td>
												<td>
													<div class="progress progress-xs progress-striped active">
														<div class="progress-bar progress-bar-success"
															style="width: ${Math.round(hotel.copponHotel.sale) }%"></div>
													</div>
												</td>
												<td><span class="badge bg-green"><span id="vl">${Math.round(hotel.copponHotel.sale )}</span>%</span></td>
												<td>${hotel.copponHotel.status ? 'Active' : 'Inactive' }</td>
											</tr>
										</c:if>
									</tbody>




								</table>
							</div>
						</div>
					</div>



					<div class="tab-pane" id="settings">tua tu se lam</div>

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
	jQuery(document)
			.ready(
					function() {

						$('#btHotel')
								.click(
										function() {

											var hotelId = $('#hotelId').val();
											var disName = $('#disNameHotel')
													.val();
											var disVal = $('#disValHotel')
													.val();
											var status = $('#statusHotel').is(
													":checked") ? 1 : 0;
											var copponHotelId = $(
													'#copponHotelId').val();

											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/copponhotel/update',
														data : {
															copponHotelId : copponHotelId,
															disName : disName,
															disVal : disVal,
															status : status,
															hotelId : hotelId
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {
															alert(result.id);
															var tb = '';
															var s = '';
															if (result.id != null) {

																tb += '<div class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
																tb += '	<i class="icon fa fa-check"></i> Add discount successfully  ';
																tb += '</div>';
																s += '   <td>'
																		+ result.name
																		+ '</td> <td>  <div class="progress progress-xs progress-striped active">';

																s += '<div class="progress-bar progress-bar-success" style="width:'
																		+ result.sale
																		+ '%"></div> </div> </td> <td><span  class="badge bg-green">';

																s += ' <span id="vl">'
																		+ Math
																				.round(result.sale)
																		+ '</span>%</span></td>';
																if (result.status == true) {
																	s += ' <td> Active </td>';
																} else {

																	s += ' <td> inactive </td>';

																}

																$('#tbHotel')
																		.html(
																				tb);
																$(
																		'#disNameHotel')
																		.val('');
																$(
																		'#disValHotel')
																		.val('');

																$('#status')
																		.prop(
																				'checked',
																				false);
																$(
																		'#tbHotel tbody tr')
																		.html(s);

															} else {

																tb += '<div class="alert alert-danger alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
																tb += '	<i class="icon fa fa-ban"></i> Add discount failed  ';
																tb += '</div>';
																$('#tbHotel')
																		.html(
																				tb);
															}

														}

													});

										});

					});
</script>



<script>
	$(document).ready(function() {
		$("#tbHotel tbody  tr").on("click", function(event) {

			var valHotel = $('#vl').html();

			var disNameHotel = $(this).find("td").eq(0).html();

			var statusHotel = $(this).find("td").eq(3).html();

			$('#disNameHotel').val(disNameHotel);
			$('#disValHotel').val(valHotel);
			if (statusHotel == 'Active') {
				$('#statusHotel').prop('checked', true);
			} else {
				$('#statusHotel').prop('checked', false);

			}

		});

	});
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

														url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/image',
														data : {
															id : id
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {
															var s = '';
															s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/' +result[0].src + '" alt="'+ result[0].alt + '"> </div>';
															s += '<div class="col-sm-6"> <div class="row">';
															if (result.length < 5) {

																for (var i = 1; i < result.length; i++) {

																	s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
																	s += ' </div>  ';

																}

																s += '</div>   </div>';
															} else {
																for (var i = 1; i < 5; i++) {

																	s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
																	s += ' </div>  ';

																}

																s += '</div>   </div>';
																for (var i = 5; i < result.length; i++) {

																	s += ' <div class="col-sm-3"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
																	s += ' </div>  ';

																}
															}

															$('#resss').html(s);

														}

													});

										});

					});
</script>
<script type="text/javascript">
	jQuery(document)
			.ready(
					function() {

						$('#btroom')
								.click(
										function() {

											var roomId = $('#roomId').val();
											var disName = $('#disName').val();
											var disVal = $('#disVal').val();
											var status = $('#status').is(
													":checked") ? 1 : 0;
											var hotelId = $('#hotelId').val();
											var json = JSON.stringify(roomId);

											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/copponroom/create',
														data : {
															roomId : json,
															disName : disName,
															disVal : disVal,
															status : status,
															hotelId : hotelId
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {
															var tb = '';
															var s = '';
															if (result.length > 0) {

																tb += '<div class="alert alert-success alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
																tb += '	<i class="icon fa fa-check"></i> Add discount successfully  ';
																tb += '</div>';
																for (var i = 0; i < result.length; i++) {

																	s += '<tr>';
																	s += '	<td>'
																			+ result[i].roomName
																			+ '</td>';
																	s += '	<td>'
																			+ result[i].discountName
																			+ '</td>';
																	s += '<td>'
																			+ Math
																					.round(result[i].discountValue)
																			+ '% </td>';
																	if (result[i].status == true) {

																		s += '<td> Active </td>';
																	}

																	else {
																		s += '<td> Inactive</td>';
																	}

																	s += '</tr>'
																}
																$('#tb').html(
																		tb);
																$('#disName')
																		.val('');
																$('#disVal')
																		.val('');

																$('#status')
																		.prop(
																				'checked',
																				false);
																$(
																		'#example2 tbody')
																		.html(s);

															} else {

																tb += '<div class="alert alert-danger alert-dismissible"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
																tb += '	<i class="icon fa fa-ban"></i> Add discount failed  ';
																tb += '</div>';
																$('#tb').html(
																		tb);
															}

														}

													});

										});

					});
</script>

