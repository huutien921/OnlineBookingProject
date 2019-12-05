<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    <div class="container">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-11">
				<h3> <i class="fa fa-edit" style="color: blue"></i> <i class="fa fa-book" style="color: violet"></i> ${title }</h3>

				<s:form method="post" modelAttribute="blogModel"
					enctype="multipart/form-data"
					action="${pageContext.request.contextPath }/employee/blog/add">

					<h5>Title:</h5>
					<s:input path="title" style="width: 500px" />
					<br>

					<h5 >Content:</h5>
					<div class="box-body pad">
						<s:textarea path="content" class="textarea" 
							placeholder="Place some text here"
							style="width: 100%; height: 200px; font-size: 14px; line-height: 18px;  border: 1px solid #dddddd; padding: 10px;" />
					</div>



					<input type="file" name="file">
<br>
<s:checkbox path="status"/> Status
<br>
<br>
					<input type="submit" value="Save" />



				</s:form>
			</div>
		</div>
	</div>
	<br>
	<hr>
	<a href="${pageContext.request.contextPath }/employee/blog/indexBlog" class="btn-lg primary"> <i class="fa fa-book" style="color: violet"></i> Back to list BLog</a>
