<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tags" uri="tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>
<c:if test="${title == null }"> Bookbed</c:if>
${title }
</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
	<link rel="icon" type="image/gif" href="${pageContext.request.contextPath }/uploads/images/bookbed_logo.png" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/dist/css/skins/_all-skins.min.css">

<!-- jvectormap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/select2/dist/css/select2.min.css">
<!-- datatable -->
<link
	href="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
	  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/iCheck/all.css">




  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
 

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/iCheck/all.css">



<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  



</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="${pageContext.request.contextPath }/home" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini">B<b>B</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Book</b>Bed</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
				
					
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="${pageContext.request.contextPath }/uploads/images/${sessionScope.account.avatar }"
								class="user-image" alt="User Image"> <span
								class="hidden-xs">${sessionScope.account.fullname }</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="${pageContext.request.contextPath }/uploads/images/${sessionScope.account.avatar }" class="img-circle"
									alt="User Image">

									<p>
										${sessionScope.account.username } 
									</p></li>
							
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="${pageContext.request.contextPath }/login/profile" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="${pageContext.request.contextPath }/login/logout" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img
							src="${pageContext.request.contextPath }/uploads/images/${sessionScope.account.avatar }"
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>${pageContext.request.userPrincipal.name}</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<sec:authorize access="hasRole('ROLE_SUPER_ADMIN')">
					<!-- super admin -->
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>Super admin</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<!--  <li><a
								href="${pageContext.request.contextPath }/superadmin/account"><i
									class="fa fa-circle-o"></i> Account management</a></li>-->
									
									<li><a
								href="${pageContext.request.contextPath }/superadmin/account/index"><i
									class="fa fa-circle-o"></i> Account management</a></li>
									
									
							<li><a
								href="${pageContext.request.contextPath }/superadmin/template "><i
									class="fa fa-circle-o"></i> Template management</a></li>
						</ul></li>
					<!-- end admin -->
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
					<!-- admin -->
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>Admin</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<!-- <li><a
								href="${pageContext.request.contextPath }/admin/employee"><i
									class="fa fa-circle-o"></i> Employee management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/service "><i
									class="fa fa-circle-o"></i> Service management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/statistical "><i
									class="fa fa-circle-o"></i> Statistical</a></li>
						</ul></li> -->
						<li><a
								href="${pageContext.request.contextPath }/admin/employee/index"><i
									class="fa fa-circle-o"></i> Employee management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/service/index "><i
									class="fa fa-circle-o"></i> Service management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/statistical/index "><i
									class="fa fa-circle-o"></i> Statistical</a></li>
						</ul></li>
						
					<!-- end admin -->
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_EMPLOYEE')">
					<!-- employee-->
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>Employee</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a
								href="${pageContext.request.contextPath }/employee/blog"><i
									class="fa fa-circle-o"></i> Blog management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/employee/feedback "><i
									class="fa fa-circle-o"></i> Feedback management</a></li>


							<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
									<span>Hotels management</span> <span
									class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
								<ul class="treeview-menu">
									<li><a
										href="${pageContext.request.contextPath }/employee/partner/unconfirmed"><i
											class="fa fa-circle-o"></i>Hotel unconfirmed </a></li>
									<li><a
										href="${pageContext.request.contextPath }/employee/partner/confirmed "><i
											class="fa fa-circle-o"></i> Hotel confirmed</a></li>
									<li><a
										href="${pageContext.request.contextPath }/employee/partner/block "><i
											class="fa fa-circle-o"></i> Hotel blocked</a></li>

								</ul></li>
							<li><a
								href="${pageContext.request.contextPath }/employee/promotion "><i
									class="fa fa-circle-o"></i> Promotion management</a></li>
							<li><a
								href="${pageContext.request.contextPath }/employee/user "><i
									class="fa fa-circle-o"></i> User management</a></li>

						</ul></li>
					<!-- end employee -->
					</sec:authorize>
						<sec:authorize access="hasRole('ROLE_SUPER_USER')">
<!-- super user-->
					<li class="treeview active"><a href="#"> <i class="fa fa-table"></i>
							<span>Super User</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a
								href="${pageContext.request.contextPath }/superuser/myhotel"><i
									class="fa fa-circle-o"></i> My Hotel</a></li>
							<li><a
								href="${pageContext.request.contextPath }/user/superuser/create/hotel "><i
									class="fa fa-circle-o"></i> New Hotel</a></li>
<li><a
								href="${pageContext.request.contextPath }/superuser/myhotel/analytics "><i
									class="fa fa-circle-o"></i> Analytics</a></li>

				
					<!-- 	<li><a
								href="${pageContext.request.contextPath }/employee/promotion "><i
									class="fa fa-circle-o"></i> Customers</a></li>
							<li><a
								href="${pageContext.request.contextPath }/employee/user "><i
									class="fa fa-circle-o"></i>Analytics</a></li> -->	

						</ul></li>
					<!-- end superuser -->
</sec:authorize>


				<!-- <li><a href="https://adminlte.io/docs"><i
							class="fa fa-book"></i> <span>Documentation</span></a></li>
					<li class="header">LABELS</li>
					<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-yellow"></i>
							<span>Warning</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li> -->	
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<tiles:insertAttribute name="content"></tiles:insertAttribute>

		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
	
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"
			style="display: none;">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-user bg-yellow"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Frodo Updated His
										Profile</h4>

									<p>New phone +1(800)555-1234</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-envelope-o bg-light-blue"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Nora Joined Mailing
										List</h4>

									<p>nora@example.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-file-code-o bg-green"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Cron Job 254
										Executed</h4>

									<p>Execution time 5 seconds</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span
										class="label label-danger pull-right">70%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Update Resume <span class="label label-success pull-right">95%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 95%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Laravel Integration <span
										class="label label-warning pull-right">50%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 50%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Back End Framework <span class="label label-primary pull-right">68%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 68%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Allow mail
								redirect <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Expose author
								name in posts <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->

						<h3 class="control-sidebar-heading">Chat Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Show me as
								online <input type="checkbox" class="pull-right" checked>
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Turn off
								notifications <input type="checkbox" class="pull-right">
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Delete chat
								history <a href="javascript:void(0)" class="text-red pull-right"><i
									class="fa fa-trash-o"></i></a>
							</label>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob  -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/moment/min/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/dist/js/demo.js"></script>
	
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- iCheck 1.0.1 -->
<script src="${pageContext.request.contextPath }/resources/admin/plugins/iCheck/icheck.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>




<!-- Select2 -->


	<script src="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/bower_components/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->

<script src="${pageContext.request.contextPath }/resources/admin/plugins/iCheck/icheck.min.js"></script>



	<script>
		$(function() {
			$('#example1').DataTable()
			$('#example3').DataTable()
			$('#example5').DataTable()
			$('#example6').DataTable()
			$('#example4').DataTable()
			$('#example2').DataTable({
				'paging' : true,
				'lengthChange' : false,
				'searching' : false,
				'ordering' : true,
				'info' : true,
				'autoWidth' : false
			})
		})
	</script>
	<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' }})
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
    //Initialize Select2 Elements

    
  })
</script>
 <script>
     //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })
	</script>


</body>
</html>
