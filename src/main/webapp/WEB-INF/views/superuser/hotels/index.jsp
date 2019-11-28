<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
       <section class="content-header">
      <h1>
        My Hotels
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
       
        <li class="active">My Hotels</li>
      </ol>
    </section>
    <section class="content">
  <c:if test="${ms == 'ok' }">
  
   <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Successfully updated!</h4>
              Updated information has been saved.
              </div>
  </c:if>
  <c:if test="${ms == 'unactive'}">
     <div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-warning"></i> Successfully updated !</h4>
               You have updated some important information. 
               Therefore, your hotel needs our confirmation.
                Confirmation results will be notified via email : ${email } 
              </div>
  
  </c:if>
     <div class="row">
     <c:forEach var="hotel" items="${hotels }">
        <div class="col-md-4">
          <div class="box box-solid">
            
            <!-- /.box-header -->
              <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-rounded" src="${pageContext.request.contextPath }/uploads/images/${hotel.image}" alt="hotel image">

              <h3 class="profile-username text-center">${hotel.name }</h3>
				<c:if test="${hotel.accountByIdAcEmployee == null }">
				<p class="text-muted text-center" style="color: #e68a00 ;"><i class="fa fa-fw fa-hourglass"></i>Awaiting</p>
				
				</c:if>
				<c:if test="${hotel.accountByIdAcEmployee != null and hotel.status == true }">
				<p class="text-muted text-center" style="color: #0033cc ;"><i class="fa fa-fw fa-check-square"></i>Active</p>
				
				</c:if>
				
              	<c:if test="${hotel.accountByIdAcEmployee != null and hotel.status == false }">
				<p class="text-muted text-center" style="color: #ff0000 ;"><i class="fa fa-fw fa-times"></i> Prohibit</p>
				
				</c:if>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                <c:set var="amountRoom" value="0"></c:set>
              
                 <c:set var="roomAvailable" value="0"></c:set>
                <c:forEach var="room" items="${hotel.rooms }">
                <c:if test="${room.status !=null}">
                
                <c:set var="amountRoom" value="${amountRoom + room.amountOfRoom }"></c:set> 
                </c:if>
                <c:forEach var="orderdetail" items="${room.orderDetails }">
                <c:if test="${orderdetail.checkOutDate > now and orderdetail.orders.status == true and orderdetail.checkInDate < now}"></c:if>
                <c:set var="roomAvailable" value="${roomAvailable + orderdetail.quantity }"></c:set>
                </c:forEach>
                </c:forEach>
              
                
                  <b>Amount Room </b> <a class="pull-right">${ amountRoom}</a>
                </li>
                
                <li class="list-group-item">
                  <b>Rooms available</b> <a class="pull-right">${amountRoom -roomAvailable }</a>
                </li>
                <li class="list-group-item">
                  <b>Service</b> <p class="pull-right">
                  
                    <c:forEach var="service" items="${hotel.serviceHotels }">
                <c:if test="${service.startDate < now and  service.endDate > now and service.status == true}">
             
              <c:if test="${service.id % 2 == 0 }">
               <span class="label label-danger"> ${service.service.name}</span>
              
              </c:if>
                
              <c:if test="${service.id % 2 != 0 }">
               <span  class="label label-success"> ${service.service.name}</span>
              
              </c:if>
                </c:if>
                
                </c:forEach>
                  
                  </p>
                </li>
              </ul>
				<div class="row">
				<div class="col-md-4"> <a href="${pageContext.request.contextPath }/superuser/myroom/create/${hotel.id}" class="btn  btn-primary"><i class="fa fa-fw fa-plus"></i>Add Room </a></div>
				
				<div class="col-md-4"> <a href="${pageContext.request.contextPath }/superuser/myhotel/edit/${hotel.id}" class="btn btn-block btn-danger"><i class="fa fa-edit"></i> Edit </a></div>
					<div class="col-md-4"> <a href="${pageContext.request.contextPath }/superuser/myhotel/detail/${hotel.id}" class="btn btn-block btn-info "><i class="fa fa-fw fa-building-o"></i> Detail</a></div>
				
				</div>             
             
            </div>
            <!-- /.box-body -->
          </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
     </c:forEach>
     
     
    </div>
 
    </section>
