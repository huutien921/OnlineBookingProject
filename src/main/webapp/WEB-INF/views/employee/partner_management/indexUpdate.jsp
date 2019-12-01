<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Content Wrapper. Contains page content -->

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Data Tables <small>advanced tables</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">Tables</a></li>
		<li class="active">Data tables</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Hotel blocked</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Country</th>
								<th>City</th>
								<th>Provincial</th>
								<th>Star rating</th>
								<th>Blocked by</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="hotel" items="${hotelsBlock }">
								<tr>
									<td>${ hotel.id}</td>
									<td>${hotel.name}</td>
									<td>${hotel.country}</td>
									<td>${hotel.city}</td>
									<td>${hotel.provincial}</td>
									<c:if test="${hotels.starRating.amount == 1}">
														<td class="">(${hotel.starRating.amount}) <i
															class="glyphicon glyphicon-star"></i></td>
													</c:if>
													<c:if test="${hotel.starRating.amount == 2}">
														<td class="">(${hotel.starRating.amount}) <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i>
														</td>
													</c:if>
													<c:if test="${hotel.starRating.amount == 3}">
														<td class="">(${hotel.starRating.amount}) <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i>
														</td>
													</c:if>
													<c:if test="${hotel.starRating.amount == 4}">
														<td class="">(${hotel.starRating.amount}) <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i></td>
													</c:if>
													<c:if test="${hotel.starRating.amount == 5}">
														<td class="">(${hotel.starRating.amount}) <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i> <i
															class="glyphicon glyphicon-star"></i></td>
													</c:if>
									<td>${hotel.accountByIdAcEmployee.fullname} (${hotel.accountByIdAcEmployee.id})</td>
									<td> <a href="${pageContext.request.contextPath }/employee/partner/detail/${hotel.id}">Detail</a></td>
								</tr>
							</c:forEach>

							
						</tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Country</th>
								<th>City</th>
								<th>Provincial</th>
								<th>Star rating</th>
								<th>Blocked by</th>
								<th>Action</th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->