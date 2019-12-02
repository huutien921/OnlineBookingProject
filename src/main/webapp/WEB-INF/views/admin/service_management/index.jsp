<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!-- <h3>service</h3> -->

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="tags" uri="tags"%>

<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!--  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/font-awesome/css/font-awesome.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/Ionicons/css/ionicons.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">


 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/dist/css/AdminLTE.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/dist/css/skins/_all-skins.min.css">
 
 <!--
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
 -->


<!-- Content Header (Page header) -->


<!-- Main content -->

<!-- /.content -->



<!-- Content Wrapper. Contains page content -->
<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab"><strong>Service</strong></a></li>
              <li><a href="#timeline" data-toggle="tab"><strong>ServiceType</strong></a></li>
             
            </ul>
            
                <div class="tab-content">
              <div class="active tab-pane" id="activity">
              
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Service 
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
					<h3 class="box-title">
						<a href="${pageContext.request.contextPath }/admin/service/save"
							class="btn btn-warning">Create New</a>
					</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">

					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Price</th>
								<th>Core</th>
								<th>Priority</th>

								<th>Status</th>
								<th>Action</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach var="service" items="${services }">
								<tr>
									<td>${ service.id}</td>
									<td>${ service.name}</td>
									<td>${ service.price}</td>
									<td>${ service.core}</td>
									<td>${ service.priority}</td>




									<c:if test="${service.status ==true}">
										<td>Active</td>

									</c:if>
									<c:if test="${account.status ==false}">
										<td>UnActive</td>

									</c:if>

									<td align="center"><a
										href="${pageContext.request.contextPath }/admin/service/detail/${service.id }"
										class="btn btn-success">Detail</a>
										<a
										href="${pageContext.request.contextPath }/admin/service/update/${service.id }"
										class="btn btn-success">Update</a>
										
										<a
										href="${pageContext.request.contextPath }/admin/service/update/${service.id }"
										class="btn btn-success">Unactive</a>
										
										</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Price</th>
								<th>Core</th>
								<th>Priority</th>

								<th>Status</th>
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
  </div>
     <div class="tab-pane" id="timeline">
    
    <tags:servicetype/>

    </div>
    </div>
   
    </div>

<!-- /.content-wrapper -->

<!--<script src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery/dist/jquery.min.js"></script>


<script src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/admin/bower_components/fastclick/lib/fastclick.js"></script>

<script src="${pageContext.request.contextPath }/resources/admin/dist/js/adminlte.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/admin/dist/js/demo.js"></script>

 <script src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script>
  jQuery(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
-->
