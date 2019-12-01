<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>

<h3 style="text-align: center;">
	<span style="color: orange;">%</span> Promotions
</h3>
<hr>
<br>

<div class="container">
	<div class="row">
		<div class="col-1"> 
		</div>
		<div class="col-11">
			<h3><i class="fa fa-gift" style="color: red"></i> Gift code:  #${detail.code } </h3>
			<h2 style="color: orange; text-align: right;">Sale off: -${detail.sales * 100}%</h2>
			<img alt="promo" src="${pageContext.request.contextPath }/uploads/images/${detail.src}" style="width: 1000px" height="500px">
			<br>
			<br>
			<p style="color: gray; text-align: right;" >Start date: ${detail.startday }</p>
			<p style="color: gray; text-align: right;">End date: ${detail.endday }</p>
			<hr>
			<h3><i class="fa fa-list" style="color: orange;"></i> Description</h3>
			${detail.description }
			<br>
			<br>
			<hr>
			<h3> <span style="color: orange;">%</span> New promotions</h3>
			<br>
			<div class="container">
			<div class="row">
			<c:forEach var="item" items="${newPromotions}">
				<!-- promo -->
				<div class="col-sm-4">
					<a href="${pageContext.request.contextPath }/promotions/detail/${item.id}"><img alt="promo"
						src="${pageContext.request.contextPath }/uploads/images/${item.src}"
						style="width: 250px; height: 200px"></a>
					<h5 style="color: gray;">Code: ${item.code }</h5>
					<div class="row">
						<div class="col">
							<small style="color: gray;">StartDate:${item.startday } <br> EndDate:${item.endday }</small>
							</div>
						<div class="col">
							<a href="${pageContext.request.contextPath }/promotions/detail/${item.id}" class="btn btn-outline-info">Detail</a>
						</div>
					</div>
					<hr>
			
				</div>
				<!-- promo -->
				</c:forEach>
				</div>
				</div>
				<br>
		</div>
	</div>
	
</div>