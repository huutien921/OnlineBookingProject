<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
	function show(input) {
		if (input.files && input.files[0]) {
			var filerdr = new FileReader();
			filerdr.onload = function(e) {
				$('#hotel_image').attr('src', e.target.result);
			}
			filerdr.readAsDataURL(input.files[0]);
		}
	}
</script>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
function deletei(id){
	$
	.ajax({
		type : 'GET',
		

		url : '${pageContext.request.contextPath }/superuser/myroom/ajax/delete/image',
		data : {
		id : id
		},
		dataType : 'json',
		contentType : 'aplication/json',
		success : function(
				result) {
			if(result.length > 0){
				var s ='';
			for (var i = 0; i < result.length; i++) {
					s += '	<div class="col-md-2"><br>';
						s += '<img class="img-responsive img-rounded" ';
						s += 'src="${pageContext.request.contextPath }/uploads/images/' + result[i].src + '"';
						s +=	'alt="'+result[i].alt +'">';
						s +=	'<button type="button" class="btn btn-link" onclick="deletei(' + result[i].id + ')">delete</button>';
						s += '</div>';
				}
			$('#resimage').html(s);
			
		
			}
		}

	});
	
	
}
</script>


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
						<div class="col-md-12">
							<a
								href="${pageContext.request.contextPath }/superuser/myhotel/edit/${hotel.id}"
								class="btn btn-block btn-danger"><i class="fa fa-edit"></i>
								Update hotel </a>
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
		<div class="col-md-9">
			<div class="box box-warning">

				<div class="box-body">
					<c:if test="${ms == 'failed' }">

						<div class="alert alert-danger alert-dismissible">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<h4>
								<i class="icon fa fa-ban"></i> Create failed !
							</h4>
							We found some errors, be sure to enter the correct fields.
						</div>
					</c:if>
					<s:form role="form" modelAttribute="room" method="post"
						enctype="multipart/form-data"
						action="${pageContext.request.contextPath}/superuser/myroom/edit">

						<div class="form-group">
							<label>Name Room </label>
							<p class="text-red">
								<s:errors path="name"></s:errors>
							</p>
							<s:input path="name" class="form-control" placeholder="Name ..." />

						</div>
						<div class="form-group">
							<label for="exampleInputFile">Avatar Room</label><br>
							<table>
								<tr>
									<td><c:if test="${room.srcIcon == null }">

											<img
												class="profile-user-img img-responsive img-rounded pull-left"
												src="${pageContext.request.contextPath }/resources/user/images/roomDefault.jpg"
												alt="room image" id="hotel_image">

										</c:if> <c:if test="${room.srcIcon != null }">
											<img
												class="profile-user-img img-responsive img-rounded pull-left"
												src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}"
												alt="room image" id="hotel_image">
										</c:if></td>

								</tr>
								<tr>
									<td>
										<p class="text-red">
											<s:errors path="srcIcon"></s:errors>
										</p> <input type="file" name="file" id="exampleInputFile"
										onchange="show(this)">

									</td>

								</tr>
							</table>


						</div>
						<div class="form-group">
							<label>Bed type</label>

							<s:select class="form-control select2" style="width: 100%;"
								path="bedType" items="${beds }" itemLabel="name" itemValue="id"></s:select>
						</div>
						<div class="form-group">
							<label>Room category</label>

							<s:select class="form-control select2" style="width: 100%;"
								path="roomCategory" items="${categorys }" itemLabel="name"
								itemValue="id"></s:select>
						</div>
						<div class="form-group">
							<label>Room type</label>

							<s:select class="form-control select2" style="width: 100%;"
								path="roomType" items="${types }" itemLabel="name"
								itemValue="id"></s:select>
						</div>
						<div class="form-group">
							<label>Price</label>
							<p class="text-red">
								<s:errors path="price"></s:errors>
							</p>
							<s:input path="price" min="0" type="number" class="form-control"
								placeholder="Price  ..." />
						</div>
						<div class="form-group">
							<label>Amount Of Bed</label>
							<p class="text-red">
								<s:errors path="amountOfBed"></s:errors>
							</p>
							<s:input path="amountOfBed" min="1" max="30" type="number"
								class="form-control" placeholder="Amount Of Bed  ..." />
						</div>
						<div class="form-group">
							<label>Capacity</label>
							<p class="text-red">
								<s:errors path="capacity"></s:errors>
							</p>
							<s:input path="capacity" min="1" max="100" type="number"
								class="form-control" placeholder="Capacity..." />
						</div>
						<div class="form-group">
							<label>Amount Of Room</label>
							<p class="text-red">
								<s:errors path="amountOfRoom"></s:errors>
							</p>
							<s:input path="amountOfRoom" min="1" max="100" type="number"
								class="form-control" placeholder="Amount Of Room ..." />
						</div>
						<div class="form-group">
							<s:checkbox path="status" />
							Active Now
						</div>
						<div class="form-group">
							
								<div class="row" id="resimage">
									<c:forEach var="image" items="${ room.imageRooms}">
										<div class="col-md-2">
											<br> <img class="img-responsive img-rounded"
												src="${pageContext.request.contextPath }/uploads/images/${image.src}"
												alt="${hotel.name }"> 
												<button type="button" class="btn btn-link" onclick="deletei(${image.id})">delete</button>
												
												
										</div>

									</c:forEach>

								</div>

							
						</div>

						<div class="form-group">
							<label>Upload description picture</label> <input type="file"
								class="form-control" id="images" max="12" name="images[]"
								onchange="preview_images();" multiple />
							<div class="row" id="image_preview"></div>
						</div>

						<div class="box-footer">
							<a
								href="${pageContext.request.contextPath}/superuser/myhotel/detail/${hotel.id}"
								class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-primary pull-right">Save
							</button>
							<s:hidden path="id"/>
							
						</div>
					</s:form>
				</div>
			</div>

		</div>

	</div>
</section>
<script>
	function preview_images() {
		$('#image_preview').html("");
		var total_file = document.getElementById("images").files.length;

		for (var i = 0; i < total_file; i++) {
			$('#image_preview').append(
					"<div class='col-md-3'><img class='img-responsive img-rounded' src='"
							+ URL.createObjectURL(event.target.files[i])
							+ "'></div>");
		}
	}
</script>
