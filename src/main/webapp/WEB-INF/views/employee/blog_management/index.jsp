<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h3>
	<i class="fa fa-edit"></i> blog
</h3>
<p style="color: green;">${msg }</p>
<div class="container">
	<a href="${pageContext.request.contextPath }/employee/blog/add"
		class="btn btn-outline-info"><i class="fa fa-edit"></i> Write new
		blog</a>
</div>
<!-- new -->

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">New Blog</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Title</th>
								<th>Created</th>
								<th>Writter</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="blog" items="${newsBlog }">
								<tr>
									<td>${ blog.id}</td>
									<td><img alt="avatar"
										src="${pageContext.request.contextPath }/uploads/images/${blog.src}"
										style="width: 60px; height: 50px"></td>
									<td>${blog.title}</td>
									<td>${blog.created}</td>
									<td>${blog.account.fullname }</td>

									<td><a
										href="${pageContext.request.contextPath }/employee/blog/edit/${blog.id}"><i class="fa fa-edit"></i>Edit</a></td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Title</th>
								<th>Created</th>
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
					<h3 class="box-title">UnActive Blog</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example2" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Title</th>
								<th>Created</th>
								<th>Writter</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="blog" items="${unActiveBlog }">
								<tr>
									<td>${ blog.id}</td>
									<td><img alt="avatar"
										src="${pageContext.request.contextPath }/uploads/images/${blog.src}"
										style="width: 60px; height: 50px"></td>
									<td>${blog.title}</td>
									<td>${blog.created}</td>
									<td>${blog.account.fullname }</td>

									<td><a
										href="${pageContext.request.contextPath }/employee/blog/edit/${blog.id}"><i class="fa fa-edit"></i>Edit</a></td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Avatar</th>
								<th>Title</th>
								<th>Created</th>
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


<!-- /new -->
<!-- old -->
<!--  <div class="row">
			<jsp:useBean id="blogs" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
			<c:url value="/employee/partner" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Blog</h3>
					</div>
					
					<div class="box-body">
						<div id="example2_wrapper"
							class="dataTables_wrapper form-inline dt-bootstrap">
							<div class="row">
								<div class="col-sm-6"></div>
								<div class="col-sm-6"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table id="example2"
										class="table table-bordered table-hover dataTable" role="grid"
										aria-describedby="example2_info">
										<div class="row">
											<div class="col-sm-12">
												<div class="dataTables_length" id="example1_length">
													<h4>Filter</h4>
												</div>
											</div>
											<div class="col-sm-12">
												<div class="dataTables_length" id="example1_length">
													<input type="search" class="form-control input-sm"
														placeholder="ID" aria-controls="example1"> <input
														type="search" class="form-control input-sm"
														placeholder="Hotel name" aria-controls="example1">
													<input type="search" class="form-control input-sm"
														placeholder="Star rating" aria-controls="example1">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="dataTables_length" id="example1_length">
													<input type="search" class="form-control input-sm"
														placeholder="Country" aria-controls="example1"> <input
														type="search" class="form-control input-sm"
														placeholder="City" aria-controls="example1"> <input
														type="search" class="form-control input-sm"
														placeholder="Provincial" aria-controls="example1">

												</div>
											</div>
											<div class="col-sm-2">
												<div class="dataTables_length" id="example1_length">
													<button class="btn btn-success pull-right btn-block btn-sm">Search</button>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="dataTables_length" id="example1_length"></div>
											</div>
											<div class="col-sm-12">
												<div class="dataTables_length" id="example1_length">
													<span style="color: white">.</span>
												</div>
											</div>
										</div>
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 100px;">Id</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Rendering engine: activate to sort column ascending"
													style="width: 100px;">Name</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 100px;">Country</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 100px;">City</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 100px;">Provincial</th>
												<th class="sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column descending"
													aria-sort="ascending" style="width: 100px;">Star
													rating</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 100px;">Confirmer</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 100px;"><p>Action</p></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="blogs" items="${blogs.pageList }">
												<tr role="row" class="odd">
													<td class="">${blogs.id}</td>
													
													
													<td class=""><a
														href="${pageContext.request.contextPath }/employee/partner/detail/${blogs.id}">Detail</a>
													</td>
												</tr>

											</c:forEach>

										</tbody>

									</table>
								</div>
							</div>
							<tg:paging pagedListHolder="${blogs}"
								pagedLink="${pagedLink}" />

						</div>
					
					</div>
					
				</div>
			</div>
		</div>-->