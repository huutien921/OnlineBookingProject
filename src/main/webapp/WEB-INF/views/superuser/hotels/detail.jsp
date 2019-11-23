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
							<a href="#" class="btn btn-block btn-danger"><i
								class="fa fa-edit"></i> Edit </a>
						</div>
						<div class="col-md-6">
							<a href="#" class="btn btn-block btn-info "><i
								class="fa fa-fw fa-building-o"></i> Detail</a>
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
				<ul class="nav nav-tabs">
					<li class="active"><a href="#activity" data-toggle="tab">Rooms</a></li>
					<li><a href="#timeline" data-toggle="tab">Customers</a></li>
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
                    <br>
                      <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/${hotel.image}" alt="${hotel.name }">
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-6">
                      <div class="row">
                      <c:forEach var="room" items="${hotel.rooms }">
                      <c:if test="${room.status == true }">
                       <div class="col-sm-6">
                          <br>
                          <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}" alt="Photo">
                        </div>
                         <div class="col-sm-6">
                          <br>
                          <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/${room.srcIcon}" alt="Photo">
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
					
						dddd
					</div>


					<div class="tab-pane" id="settings">frfff</div>
					
				</div>
			
			</div>
	
		</div>
		
	</div>
	

</section>
<script>
	$(function() {
		$('#example1').DataTable()
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : true,
			'searching' : true,
			'ordering' : true,
			'info' : true,

			'autoWidth' : false
		})
	})
</script>


<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script>

	$(document).ready(function() {
		$("#example1 tbody tr").on("click", function(event) {
			
			var id = $(this).find("td").eq(1).html();
			$.ajax({
				
				type : 'GET',

				url : '${pageContext.request.contextPath }/superuser/myhotel/ajax/image',
				data : {
					id : id
				},
				dataType : 'json',
				contentType : 'aplication/json',
				success : function(result) {
					var s = '';
					s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/' +result[0].src + '" alt="'+ result[0].alt + '"> </div>';
					s += '<div class="col-sm-6"> <div class="row">';
					if(result.length < 5 ){

						for (var i = 1 ; i < result.length; i++) {
							
							   s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
			                     s += ' </div>  '  ;
			  
								}
							
							s +='</div>   </div>';
						}else{
							for (var i = 1 ; i < 5; i++) {
								
								   s += ' <div class="col-sm-6"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
				                     s += ' </div>  '  ;
				  
									}
								
								s +='</div>   </div>';
								for (var i = 5; i < result.length ; i++) {
									
									   s += ' <div class="col-sm-3"> <br> <img class="img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/'+ result[i].src +'" alt="'+ result[i].alt + '">';
					                     s += ' </div>  '  ;
					                     
										}
							}
			
					
					$('#resss').html(s);
				
					}

			});

		});
		
	});
</script>