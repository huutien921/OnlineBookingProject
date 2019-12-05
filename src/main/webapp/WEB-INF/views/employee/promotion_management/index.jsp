<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3><span style="color: orange; font-size: 20px; font-weight: bold;" >% </span><i class="fa fa-gift" style="color: red"></i> Promotion</h3>

<p style="color: green;">${msg }</p>
<div class="container">
	<a href="${pageContext.request.contextPath }/employee/promotion/add"
		class="btn btn-outline-info"><i class="fa fa-edit"></i> Add new
		promotion</a>
</div>
<!-- new -->

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">New Promotion <span style="color: orange; font-size: 20px; font-weight: bold">%</span></h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Code</th>
								<th>Sale</th>
								<th>Start date</th>
								<th>End date</th>
								<th>Writter</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${newsSale }">
								<tr>
									<td>${ item.id}</td>
									<td><img alt="avatar"
										src="${pageContext.request.contextPath }/uploads/images/${item.src}"
										style="width: 60px; height: 50px"></td>
									<td>${item.code}</td>
									<td>${item.sales}</td>
									<td>${item.startday}</td>
									<td>${item.endday}</td>
									<td>${item.account.fullname }</td>

									<td><a
										href="${pageContext.request.contextPath }/employee/promotion/edit/${item.id}"><i class="fa fa-edit"></i>Edit</a></td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Code</th>
								<th>Sale</th>
								<th>Start date</th>
								<th>End date</th>
								<th>Writter</th>
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
	
		<div class="col-xs-12">

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">UnActive Promotion</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example2" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Code</th>
								<th>Sale</th>
								<th>Start date</th>
								<th>End date</th>
								<th>Writter</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${unActiveSale }">
								<tr>
									<td>${ item.id}</td>
									<td><img alt="avatar"
										src="${pageContext.request.contextPath }/uploads/images/${item.src}"
										style="width: 60px; height: 50px"></td>
									<td>${item.code}</td>
									<td>${item.sales}</td>
									<td>${item.startday}</td>
									<td>${item.endday}</td>
									<td>${item.account.fullname }</td>

									<td><a
										href="${pageContext.request.contextPath }/employee/promotion/edit/${item.id}"><i class="fa fa-edit"></i>Edit</a></td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Code</th>
								<th>Sale</th>
								<th>Start date</th>
								<th>End date</th>
								<th>Writter</th>
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