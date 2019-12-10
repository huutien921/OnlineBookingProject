<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#birthday").datepicker();
	});
</script>
</head>
<body>
	<h3>Add account</h3>


	




	<section class="content">
	<s:form method="post" modelAttribute="account" enctype="multipart/form-data"
						action="${pageContext.request.contextPath }/admin/employee/save">
		<div class="row">
			<div class="col-md-6">

				<div class="box box-danger">
					<div class="box-header">
						<h3 class="box-title">Input masks</h3>
					</div>
					
						<div class="box-body">
							<!-- Date dd/mm/yyyy -->

							<div class="form-group">
								<label>Username</label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-user"></i>
									</div>

									<s:input path="username" cssClass="form-control"
										placeholder="UserName" required="required"/>
											<span style="color:red">${err }</span>
								</div>
								<!-- /.input group -->

								<!-- /.form group -->
							</div>
							<!-- Date mm/dd/yyyy -->
							<div class="form-group">
							<label>Password</label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-key"></i>
									</div>
									<input type="password" name="password" class="form-control"
										placeholder="Password" required="required">
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<!-- phone mask -->
							<div class="form-group">
								<label>Name</label>

								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-user-md"></i>
									</div>
									<s:input path="fullname" cssClass="form-control" placeholder="Name" required="required"/>
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<!-- phone mask -->
							<div class="form-group">
								<label>Type</label>

								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-star-o"></i>
									</div>
									<s:input path="type" cssClass="form-control" placeholder="Type"/>
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<!-- IP mask -->
							<div class="form-group">
								<label>Email</label>

								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-envelope"></i>
									</div>
									<s:input path="email" cssClass="form-control" placeholder="Email" required="required"/>
							
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->



							
							
							
							
						</div>
						<!-- /.box-body -->
					
				</div>
				<!-- /.box -->


				<!-- /.box -->

			</div>







			<!-- /.col (left) -->
			<div class="col-md-6">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Date picker</h3>
					</div>
					<div class="box-body">
					
					<div class="form-group">
								<label>Address</label>

								<div class="input-group">
									<div class="input-group-addon">
										<i class="glyphicon glyphicon-home"></i>
									</div>
									<s:input path="address" cssClass="form-control" placeholder="Address" required="required"/>
							
								</div>
								<!-- /.input group -->
							</div>
					
						<!-- Date -->
						<div class="form-group">
							<label>BirthDate:</label>

							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
								</div>
								<input type="text" class="form-control pull-right"
									id="datepicker" name="birthday" placeholder="Birthday">
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->

						<!-- Date range -->
						<div class="form-group">
							<label>Identity Card:</label>

							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-cc-amex"></i>
								</div>
								<s:input path="identitycard" cssClass="form-control" placeholder="Identity Card" required="required"/>
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->

						<!-- Date and time range -->
						<div class="form-group" >
							<label>Gender:</label>

							<div class="input-group" >
							<div class="form-group" align="center">	
								
                <label>
                  <input type="radio" name="gender" value="Male" class="flat-red" checked="checked">
                  Male
                </label>
              <label></label>
                <label></label>
                <label>
                  <input type="radio" name="gender" value="Female" class="flat-red" checked="checked">
                  Female
                </label>
            
              </div>
							</div>
							<!-- /.input group -->
						</div>
						<!-- /.form group -->

							




						<!-- Date and time range -->
						<div class="form-group">
							<label>Avatar:</label>

							<div class="input-group">
								 <input type="file" name="file" id="exampleInputFile" >
								
							</div>
						</div>
						
						
						<div class="form-group">
							

							<div class="input-group">
								<button type="submit" class="btn btn-info pull-right">Submit</button>
								
							</div>
						</div>
						<!-- /.form group -->

					</div>
					<!-- /.box-body -->
				</div>
			</div>
		</div>
		</s:form>
	</section>


</body>
</html>