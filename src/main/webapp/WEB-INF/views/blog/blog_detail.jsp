<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>

<h3 style="text-align: center;">
	<i class="fa fa-blog" style="color: violet"></i> <i class="fa fa-book" style="color: violet"></i> Blog
</h3>
<hr>
<br>

<div class="container">
	<div class="row">
		<div class="col-1"> 
		</div>
		<div class="col-11">
			<h3> ${detail.title } </h3>
			<h3 style="color: gray; text-align: right;">Author: ${detail.account.fullname }</h3>
			<hr>
			<img alt="promo" src="${pageContext.request.contextPath }/uploads/images/${detail.src}" style="width: 1000px" height="500px">
			<br>
			<br>
			<p style="color: gray; text-align: right;" >Created: ${detail.created }</p>
			
			<hr>
			<h3><i class="fa fa-list" style="color: orange;"></i>${detail.title }</h3>
			${detail.content }
			<br>
			<h3 style="color: gray; text-align: right; font-size: 15px">Author ${detail.account.fullname }</h3>
			<br>
			<br>
			<hr>
			<h3> <i class="fa fa-blog" style="color: violet"></i> <i class="fa fa-book" style="color: violet"></i> New Blog</h3>
			<br>
			<div class="container">
			<div class="row">
			<c:forEach var="item" items="${newBlog}">
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
									
									class="btn btn-outline-info">Detail</a>
							</div>
						</div>
						
					</div>
					<!-- promo -->
				</c:forEach>
				</div>
				</div>
				<br>
		</div>
	</div>
	
</div>