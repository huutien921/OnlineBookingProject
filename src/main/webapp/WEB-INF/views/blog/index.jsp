<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="tags" uri="tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<br>

<h3 style="text-align: center;">
	<i class="fa fa-blog" style="color: violet"></i> <i class="fa fa-book" style="color: violet"></i> Blog
</h3>
<hr>
<br>
<div class="container" style="margin-top: 20px;">
	<jsp:useBean id="pagedListHolder" scope="request"
		type="org.springframework.beans.support.PagedListHolder" />
	<c:url value="/blog" var="pagedLink">
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
						<a href="${pageContext.request.contextPath }/blog/blog_detail/${item.id}"><img alt="promo"
							src="${pageContext.request.contextPath }/uploads/images/${item.src}"
							style="width: 250px; height: 200px"></a>
						<h5 style="color: gray;">
							${item.title }
						</h5>
						<div class="row">
							<div class="col">
								<small style="color: gray;">Created:${item.created }
									
								</small>
							</div>
							<div class="col">
								<a
									href="${pageContext.request.contextPath }/blog/blog_detail/${item.id}"
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
