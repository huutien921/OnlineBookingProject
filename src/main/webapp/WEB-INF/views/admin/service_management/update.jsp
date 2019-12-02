<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add</h1>




 <section class="content">
      <div class="row">
 <div class="col-md-12" >
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
          
            <!-- /.box-header -->
            <!-- form start -->
             <s:form method="post" modelAttribute="service" action="${pageContext.request.contextPath }/admin/service/update/${id}" >
           
              <div class="box-body ">
                <div class="form-group col-md-6">
                  <label for="exampleInputEmail1">Name</label>
                  <s:input path="name" cssClass="form-control" id="inputEmail3" placeholder="Name"/>
                </div>
                  <div class="form-group col-md-6">
                  <label for="exampleInputPassword1">Price</label>
                  <s:input path="price" cssClass="form-control" id="inputEmail3" placeholder="Price"/>
                </div>
                
                
                
                
                <div class="form-group col-md-6">
                  <label for="exampleInputPassword1">Core</label>
                  <s:input path="core" cssClass="form-control" id="inputEmail3" placeholder="Core"/>
                </div>
                
                 <div class="form-group col-md-6">
                  <label for="exampleInputPassword1">Priority</label>
                  <s:input path="priority" cssClass="form-control" id="inputEmail3" placeholder="Priority"/>
                </div>
                
                
               
                
              
                
                
                 <div class="form-group col-md-6">
                  <label for="exampleInputPassword1">Icon</label>
                  <s:input path="iconSrc" cssClass="form-control" id="inputEmail3" placeholder="Icon"/>
                </div>
              
                 <div class="form-group">
                  <label for="exampleInputPassword1">Service Type</label>
                <select class="form-control select2" name="servicetypeid" style="width: 50%;">
              	<c:forEach var="service" items="${services }">
              	
              			<option value="${service.id }">${service.name }</option>
              	
              	</c:forEach>
                  <!--  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option disabled="disabled">California (disabled)</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                  -->
                </select>
                </div>
                
                
                
                
                  <div class="form-group">
                   <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">Description
                <small>Advanced and full of features</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
               
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
            
              <s:textarea path="description" id="editor1" name="editor1" rows="10" cols="80" placeholder="Description"/>
                  
            
            </div>
          </div>
                </div>
                
                
                
                
                
                
                
                
                
              <!--    <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" id="exampleInputFile" name="file">

                  <p class="help-block">Example block-level help text here.</p>
                </div>
                -->
                
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
            
                <button type="submit" class="btn btn-info pull-right">Submit</button>
              </div>
            </s:form>
          </div>
          </div>
          
          
          
          
         
          </div>
        
          </section>
          
          
          
      
</body>
</html>



