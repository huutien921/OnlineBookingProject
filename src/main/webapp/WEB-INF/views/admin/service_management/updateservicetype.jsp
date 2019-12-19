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
             <s:form method="post" modelAttribute="servicetype" action="${pageContext.request.contextPath }/admin/service/updateservicetype" >
           
              <div class="box-body ">
                <div class="form-group col-md-6">
                  <label for="exampleInputEmail1">Name</label>
                  <s:input path="name" cssClass="form-control" id="inputEmail3" placeholder="Name" required="required"/>
                </div>
                 
                
                
               
                
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
            
                <button type="submit" class="btn btn-info pull-right">Submit</button>
                <s:hidden path="id"/>
              </div>
            </s:form>
          </div>
          </div>
          
          
          
          
         
          </div>
        
          </section>


 
          
          
      
</body>
</html>



