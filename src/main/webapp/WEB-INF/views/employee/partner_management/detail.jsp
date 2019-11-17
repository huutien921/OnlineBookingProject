<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content">

	<div class="row">
		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img class="profile-user-img img-responsive img-circle"
						src="${pageContext.request.contextPath }/uploads/images/${hotel.image}" alt="User profile picture">

					<h3 class="profile-username text-center">${hotel.name }</h3>

					<p class="text-muted text-center">${hotel.city }</p>

					<ul class="list-group list-group-unbordered">
						<li class="list-group-item"><b>Star rating</b> 
							<c:if test="${hotel.starRating.amount == 1 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i> </a>
							</c:if>
							<c:if test="${hotel.starRating.amount == 2 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i> </a>
							</c:if>
							<c:if test="${hotel.starRating.amount == 3 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i> </a>
							</c:if>
							<c:if test="${hotel.starRating.amount == 4 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i></i> </a>
							</c:if>
							<c:if test="${hotel.starRating.amount == 5 }">
								<a class="pull-right"> <i class="glyphicon glyphicon-star"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i></i> </a>
							</c:if>
						</li>
						<li class="list-group-item"><b>Following</b> <a
							class="pull-right">543</a></li>
					</ul>
					<c:if test="${hotel.status == false && hotel.accountByIdAcEmployee == null }">
						<a href="#" class="btn btn-success btn-block"><b>Active</b></a>
					<br>
					<a href="#" class="btn btn-danger btn-block"><b>UnActive</b></a>
					</c:if>
					<c:if test="${hotel.status == false && hotel.accountByIdAcEmployee != null }">
						
						<p style="color: red">UnActive by ${hotel.accountByIdAcEmployee.fullname }</p>
						
						<a href="#" class="btn btn-success btn-block"><b>Active</b></a>
					</c:if>
					<c:if test="${hotel.status == true && hotel.accountByIdAcEmployee != null }">
						
						<p style="color: green">Active by ${hotel.accountByIdAcEmployee.fullname }</p>
						
						<a href="#" class="btn btn-danger btn-block"><b>UnActive</b></a>
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
					<strong><i class="fa fa-book margin-r-5"></i>Hotel description</strong>

					<p class="text-muted"> ${hotel.description } </p>

					<hr>

					<strong><i class="fa fa-map-marker margin-r-5"></i>
						Location</strong>

					<p class="text-muted"> ${hotel.addressFull } </p>

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
					

						<!-- Post -->
						<div class="post">
							<div class="user-block">
								<img class="img-circle img-bordered-sm"
									src="${pageContext.request.contextPath }/resources/admin/dist/img/user6-128x128.jpg" alt="User Image">
								<span class="username"> <a href="#">Adam Jones</a> <a
									href="#" class="pull-right btn-box-tool"><i
										class="fa fa-times"></i></a>
								</span> <span class="description">Posted 5 photos - 5 days ago</span>
							</div>
							<!-- /.user-block -->
							<p>Lorem ipsum represents a long-held tradition for
								designers, typographers and the like. Some people hate it and
								argue for its demise, but others ignore the hate as they create
								awesome tools to help create filler text for everyone from bacon
								lovers to Charlie Sheen fans.</p>
							
							<div class="row margin-bottom">
								<div class="col-sm-6">
									<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png"
										alt="Photo">
								</div>
								<!-- /.col -->
								<div class="col-sm-6">
									<div class="row">
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo2.png"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo3.jpg" alt="Photo">
										</div>
										<!-- /.col -->
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo4.jpg"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png" alt="Photo">
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->

							<ul class="list-inline">
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-exclamation-sign"></i> Report (2)</a></li>
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-comment"></i> Comments (5)</a></li>
								<li class="pull-right"><a href="#"
									class="link-black text-sm"><i
										class="glyphicon glyphicon-eye-open"></i> Detail... </a></li>
							</ul>

							<form class="form-horizontal">
								<div class="form-group margin-bottom-none">
									<div class="col-sm-6">
										<input class="form-control input-sm" placeholder="Response">
									</div>
									<div class="col-sm-3">
										<button type="submit"
											class="btn btn-success pull-right btn-block btn-sm">Active</button>
									</div>
									<div class="col-sm-3">
										<button type="submit"
											class="btn btn-danger pull-right btn-block btn-sm">UnActive</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.post -->
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="timeline">
						<!-- Post -->
						<div class="post">
							<div class="user-block">
								<img class="img-circle img-bordered-sm"
									src="${pageContext.request.contextPath }/resources/admin/dist/img/user6-128x128.jpg" alt="User Image">
								<span class="username"> <a href="#">Adam Jones</a> <a
									href="#" class="pull-right btn-box-tool"><i
										class="fa fa-times"></i></a>
								</span> <span class="description">Posted 5 photos - 5 days ago</span>
							</div>
							<!-- /.user-block -->
							<p>Lorem ipsum represents a long-held tradition for
								designers, typographers and the like. Some people hate it and
								argue for its demise, but others ignore the hate as they create
								awesome tools to help create filler text for everyone from bacon
								lovers to Charlie Sheen fans.</p>
							
							<div class="row margin-bottom">
								<div class="col-sm-6">
									<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png"
										alt="Photo">
								</div>
								<!-- /.col -->
								<div class="col-sm-6">
									<div class="row">
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo2.png"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo3.jpg" alt="Photo">
										</div>
										<!-- /.col -->
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo4.jpg"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png" alt="Photo">
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->

							<ul class="list-inline">
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-exclamation-sign"></i> Report (2)</a></li>
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-comment"></i> Comments (5)</a></li>
								<li class="pull-right"><a href="#"
									class="link-black text-sm"><i
										class="glyphicon glyphicon-eye-open"></i> Detail... </a></li>
							</ul>

							<form class="form-horizontal">
								<div class="form-group margin-bottom-none">
									<div class="col-sm-9">
										<input class="form-control input-sm" placeholder="Response">
									</div>
									
									<div class="col-sm-3">
										<button type="submit"
											class="btn btn-danger pull-right btn-block btn-sm">UnActive</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.post -->
					</div>
					<!-- /.tab-pane -->

					<div class="tab-pane" id="settings">
						<!-- Post -->
						<div class="post">
							<div class="user-block">
								<img class="img-circle img-bordered-sm"
									src="${pageContext.request.contextPath }/resources/admin/dist/img/user6-128x128.jpg" alt="User Image">
								<span class="username"> <a href="#">Adam Jones</a> <a
									href="#" class="pull-right btn-box-tool"><i
										class="fa fa-times"></i></a>
								</span> <span class="description">Posted 5 photos - 5 days ago</span>
							</div>
							<!-- /.user-block -->
							<p>Lorem ipsum represents a long-held tradition for
								designers, typographers and the like. Some people hate it and
								argue for its demise, but others ignore the hate as they create
								awesome tools to help create filler text for everyone from bacon
								lovers to Charlie Sheen fans.</p>
							
							<div class="row margin-bottom">
								<div class="col-sm-6">
									<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png"
										alt="Photo">
								</div>
								<!-- /.col -->
								<div class="col-sm-6">
									<div class="row">
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo2.png"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo3.jpg" alt="Photo">
										</div>
										<!-- /.col -->
										<div class="col-sm-6">
											<img class="img-responsive" src="${pageContext.request.contextPath }/resources/admin/dist/img/photo4.jpg"
												alt="Photo"> <br> <img class="img-responsive"
												src="${pageContext.request.contextPath }/resources/admin/dist/img/photo1.png" alt="Photo">
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->

							<ul class="list-inline">
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-exclamation-sign"></i> Report (2)</a></li>
								<li><a href="#" class="link-black text-sm"><i
										class="glyphicon glyphicon-comment"></i> Comments (5)</a></li>
								<li class="pull-right"><a href="#"
									class="link-black text-sm"><i
										class="glyphicon glyphicon-eye-open"></i> Detail... </a></li>
							</ul>

							<form class="form-horizontal">
								<div class="form-group margin-bottom-none">
									<div class="col-sm-9">
										<input class="form-control input-sm" placeholder="Response">
									</div>
									<div class="col-sm-3">
										<button type="submit"
											class="btn btn-success pull-right btn-block btn-sm">Active</button>
									</div>
								</div>
							</form>
						</div>
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