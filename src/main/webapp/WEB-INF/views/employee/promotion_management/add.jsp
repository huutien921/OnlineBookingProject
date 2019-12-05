<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#startday").datepicker();
		$("#endday").datepicker();
	});
</script>

<div class="container">
	<div class="row">
		<div class="col-1"></div>
		<div class="col-11">
			<h3>
				<i class="fa fa-edit" style="color: blue"></i> <i class="fa fa-gift"
					style="color: violet"></i> ${title }
			</h3>

			<s:form method="post" modelAttribute="saleModel"
				enctype="multipart/form-data"
				action="${pageContext.request.contextPath }/employee/promotion/add">

				<h5>Code:</h5>
				<s:input path="code" style="width: 500px" />
				<br>

				<h5>%Sale:</h5>
				<s:input path="sales" style="width: 500px" />
				<br>

				<h5>Start date:</h5>
				<s:input id="startday" path="startday" style="width: 500px" />
				<br>

				<h5>End date:</h5>
				<s:input  id="endday" path="endday" style="width: 500px" />
				<br>
				<h5>Description:</h5>
				<div class="box-body pad">
					<s:textarea path="description" class="textarea"
						placeholder="Place some text here"
						style="width: 100%; height: 200px; font-size: 14px; line-height: 18px;  border: 1px solid #dddddd; padding: 10px;" />
				</div>



				<input type="file" name="file">
				<br>
				<s:checkbox path="status" /> Status
<br>
				<br>
				<input type="submit" value="Save" />



			</s:form>
		</div>
	</div>
</div>
<br>
<hr>
<a href="${pageContext.request.contextPath }/employee/promotion/index"
	class="btn-lg primary"> <i class="fa fa-book" style="color: violet"></i>
	Back to list BLog
</a>
