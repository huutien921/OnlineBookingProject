<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

 
<title>Account</title>



<section class="content-header">
      <h1>
        Account
      
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
         
          <!-- /.box -->

          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><a  href="${pageContext.request.contextPath }/admin/employee/insertaccount" class="btn btn-warning">Create New</a></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
               <thead>
								<tr>
									<th>ID</th>
						<th>User name</th>
					
						<th>Full name</th>
						<th>Birthday</th>
					
						
						<th>Gender</th>
						
						<th>Created</th>
						<th>Status</th>
						<th>Role</th>
						<th>Action</th>

								</tr>
							</thead>

							<tbody>
				<c:forEach var="account" items="${accounts }">
					<tr>
						<td>${ account.id}</td>
						<td>${ account.username}</td>
					
						<td>${ account.fullname}</td>
						<td>${ account.birthday}</td>
					
					
						<td>${account.gender }</td>
						
						<td>
						<fmt:formatDate pattern = "yyyy-MM-dd" 
         value = "${account.created }" />
						
						 </td>
							<c:if test="${account.status ==true}">
							<td> Active</td>
							
							</c:if>
							<c:if test="${account.status ==false}">
							<td> UnActive</td>
							
							</c:if>
						<td>
					 	<c:forEach var="roles" items="${account.roleAccounts}">
						
						<c:if test="${roles.role.id == 1}">
						Super Admin
						<br>
						</c:if>
						<c:if test="${roles.role.id == 2}">
						Admin
						<br>
						
						</c:if>
						<c:if test="${roles.role.id == 3}">
						Employee
						<br>
						</c:if>
						<c:if test="${roles.role.id == 4}">
						User
						
						</c:if>
						<c:if test="${roles.role.id == 5}">
						Super user
						<br>
						</c:if>
						</c:forEach>
						</td>
						
						<td align="center"><a href="${pageContext.request.contextPath }/admin/employee/accountdetail/${account.id }" class="btn btn-success">Detail</a>
						
						<a href="${pageContext.request.contextPath }/admin/employee/accountupdate/${account.id }" class="btn btn-success">Update</a>
						<c:if test="${account.status ==true}">
						<a href="${pageContext.request.contextPath }/admin/employee/unactive/${account.id}" class="btn btn-danger" onclick="return confirm('Are you sure to Unactive');">Unactive</a>
						</c:if>
						<c:if test="${account.status ==false}">
							<a href="${pageContext.request.contextPath }/admin/employee/active/${account.id}" class="btn btn-success" onclick="return confirm('Are you sure to Active');">Active</a>
						</c:if>
						</td>
					</tr>
						</c:forEach>
				</tbody>
							<tfoot>
								<tr>
						<tr>
									<th>ID</th>
						<th>User name</th>
					
						<th>Full name</th>
						<th>Birthday</th>
					
						
						<th>Gender</th>
						
						<th>Created</th>
						<th>Status</th>
						<th>Role</th>
						<th>Action</th>

								</tr>
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







