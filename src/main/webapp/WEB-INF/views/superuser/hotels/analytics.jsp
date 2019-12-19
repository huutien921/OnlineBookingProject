<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script>
	$(document).ready(function() {
	

	});
</script>
    <section class="content">

      <div class="row">
      
       <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Overview</a></li>
              <c:set value="#" var="n"></c:set>
              <c:forEach var="hotel" items="${hotels }">
               <li><a href="${n }${hotel.id } " data-toggle="tab">${hotel.name }</a></li>
              
              
              </c:forEach>
             
            
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">
               <div class="row">
              <c:forEach var="hotel" items="${hotels }">
             
                 <div class="col-md-6">
                    <!-- Donut chart -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">${hotel.name }</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div id="donut-chart" style="height: 300px;"></div>
            </div>
        
          </div>
          </div>
          <!-- /.box -->
          </c:forEach>
          
                </div>
              </div>
        
        <c:forEach var="hotel" items="${hotels }">
              <div class="tab-pane" id="${hotel.id }">
              
            ${hotel.name }
               
            
              </div>
        </c:forEach>
        
            

             
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
      </div></section>