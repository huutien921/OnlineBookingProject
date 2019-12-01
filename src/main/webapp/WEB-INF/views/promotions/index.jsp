<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="tags" uri="tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<br>

<h3 style="text-align: center;">
	<i class="fa fa-gift" style="color: red"></i> <span
		style="color: orange;">%</span> Promotions
</h3>
<hr>
<br>
<div class="container" style="margin-top: 20px;">
	<jsp:useBean id="pagedListHolder" scope="request"
		type="org.springframework.beans.support.PagedListHolder" />
	<c:url value="/promotions" var="pagedLink">
		<c:param name="p" value="~" />
	</c:url>


	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-11">

			<tg:paging pagedListHolder="${pagedListHolder}"
				pagedLink="${pagedLink}" />
			<div class="row">

				<c:forEach var="item" items="${pagedListHolder.pageList}">
					<!-- promo -->
					<div class="col-sm-4">
						<a href="${pageContext.request.contextPath }/promotions/detail/${item.id}"><img alt="promo"
							src="${pageContext.request.contextPath }/uploads/images/${item.src}"
							style="width: 250px; height: 200px"></a>
						<h5 style="color: gray;">
							<i class="fa fa-gift" style="color: red"></i>Code: ${item.code }
						</h5>
						<div class="row">
							<div class="col">
								<small style="color: gray;">StartDate:${item.startday }
									<br> EndDate:${item.endday }
								</small>
							</div>
							<div class="col">
								<a
									href="${pageContext.request.contextPath }/promotions/detail/${item.id}"
									class="btn btn-outline-info">Detail</a>
							</div>
						</div>
						<hr>
					</div>
					<!-- promo -->
				</c:forEach>

			</div>
			<tg:paging pagedListHolder="${pagedListHolder}"
				pagedLink="${pagedLink}" />
		</div>
	</div>
</div>
<br>
