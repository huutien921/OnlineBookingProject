<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<script>
	$(function() {
		// Replace the <textarea id="editor1"> with a CKEditor
		// instance, using default configuration.
		CKEDITOR.replace('editor1')
		//bootstrap WYSIHTML5 - text editor
		$('.textarea').wysihtml5()
	})
</script>
<script type="text/javascript">
    function show(input) {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
                $('#hotel_image').attr('src', e.target.result);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
    }

</script>
<section class="content">
	<div class="box box-warning">

		<div class="box-body">
		  <c:if test="${ms == 'failed' }">
  
    <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Update failed !</h4>
                We found some errors, be sure to enter the correct fields.
              </div>
  </c:if>
			<s:form role="form" modelAttribute="hotel" method="post"  enctype="multipart/form-data" action="${pageContext.request.contextPath}/superuser/myhotel/edit">

				<div class="form-group">
					<label>Name hotel <span class="text-red"> * </span></label>  <p class="text-red"> <s:errors path="name" ></s:errors></p><s:input path="name" class="form-control"
						placeholder="Name ..." />
						
				</div>
				<div class="form-group"><label for="exampleInputFile">Image Hotel</label><br>
				<table>
				<tr>
				<td> <img class="profile-user-img img-responsive img-rounded pull-left" src="${pageContext.request.contextPath }/uploads/images/${hotel.image}" alt="hotel image" id="hotel_image">
				</td>
				
				</tr>
					<tr>
				<td>
						 <p class="text-red"> <s:errors path="image" ></s:errors></p>
				
				<input	type="file" name="file" id="exampleInputFile" onchange="show(this)">
				
				</td>
				
				</tr>
				</table>
					
			
				</div>
				    <div class="form-group">
                <label>StarRating</label>
           
                <s:select  class="form-control select2" style="width: 100%;" path="starRating" items="${starRatings }"  itemLabel="amount" itemValue="id"></s:select>
              </div>
				<div class="form-group">
					<label>Address full <span class="text-red">  * </span></label><p class="text-red"> <s:errors path="addressFull" ></s:errors></p> <s:input path="addressFull" class="form-control"
						placeholder="Address full ..."/>
				</div>
				<div class="form-group">
					<label>Ward <span class="text-red">  * </span> </label><p class="text-red"> <s:errors path="ward" ></s:errors></p> <s:input path="ward" class="form-control"
						placeholder="Ward ..."/>
				</div>
				<div class="form-group">
					<label>City <span class="text-red">  * </span></label><p class="text-red"> <s:errors path="city" ></s:errors></p> <s:input path="city" class="form-control"
						placeholder="City ..."/>
				</div>
				<div class="form-group">
					<label>Provincial <span class="text-red">  * </span></label><p class="text-red"> <s:errors path="provincial" ></s:errors></p> <s:input  path="provincial" class="form-control"
						placeholder="Provincial ..."/>
				</div>
				<div class="form-group">
					<label>Country <span class="text-red">  * </span></label><p class="text-red"> <s:errors path="country" ></s:errors></p> <s:input class="form-control" path="country"
						placeholder= "Country ..."/>
				</div>

				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Hotel Information</h3>
					</div>
					<table class="table  ">
						<tr>
							<td><label> <s:checkbox path="wifi" /> wifi
							</label></td>
							<td><label> 
							<s:checkbox path="parking" /> Parking
							
							</label></td>
							<td><label>
							<s:checkbox path="spa" /> Spa
							
							</label></td>
						</tr>

						<tr>
							<td><label> 
							
								<s:checkbox path="gym" /> Gym
							
							</label></td>
							<td><label> 
								<s:checkbox path="carRental" /> Car Rental
						
							</label></td>
							<td><label>
							<s:checkbox path="airportTransfer" /> AirportTransfer
							
							 
							</label></td>
						</tr>
						<tr>
							<td><label> 
							
								<s:checkbox path="freeBreakfast" /> Free Breakfast
					
							</label></td>
							<td><label>
								<s:checkbox path="swimmingPool" /> Swimming Pool
							
							 
							</label></td>
							<td><label> 
								<s:checkbox path="elevator" />  Elevator
						
							</label></td>
						</tr>
						<tr>
							<td><label>
							<s:checkbox path="receptionist" />  Receptionist
							
							
							</label></td>
							<td><label>
							
							<s:checkbox path="airConditioner" />   Air
									Conditioner
							
							</label></td>
							<td><label>
								<s:checkbox path="freeCancellation" />  Free
									Cancellation
							
							
							</label></td>
						</tr>
						<tr>
							<td><label>
							
							<s:checkbox path="payAtHotel" />  Pay At Hotel
							
							</label></td>
							<td><label> 
								<s:checkbox path="assemblyFacilites" /> Assembly
									Facilites
							
							</label></td>
							<td><label> 
								<s:checkbox path="driveway" /> Driveway
					
							</label></td>
						</tr>
					</table>
				</div>
				  <div class="box-header">
              <h3 class="box-title">Description
            
              </h3>
          <p class="text-red"> <s:errors path="description" ></s:errors></p> 
            </div>
				 <div class="box-body pad">
				<s:textarea path="description" class="textarea"  placeholder="Place some text here"
					style="width: 100%; height: 200px; font-size: 14px; line-height: 18px;  border: 1px solid #dddddd; padding: 10px;" />		
</div>
   <div class="box-footer">
                <a href="${pageContext.request.contextPath}/superuser/myhotel/detail/${hotel.id}" class="btn btn-default">Cancel</a>
                <button type="submit" class="btn btn-primary pull-right">Save Change </button> <s:hidden path="id"/>
              </div>
			</s:form>
		</div>
	</div>

</section>
