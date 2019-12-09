<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>

<script type="text/javascript">
	jQuery(document)
			.ready(
					function() {
						var d = moment(new Date().setFullYear(new Date().getFullYear() +1)).format('YYYY-MM-DD');
						
						document.getElementById("datepicker").value = d;
						
						$("#tatolin").val($('#tatol').html());
					

						$("#datepicker").on("change", function(event) {
							var date1 = new Date();
							var date2 = new Date($('#datepicker').val());
							var price = $('#price').html();
							var dateH = (date2.getTime() - date1.getTime()) / (1000 *60 *60 *24*30);

								$("#tatol").text(Math.round(dateH) * price);
								$("#tatolin").val($('#tatol').html());
								
						
							
							
							});
						});
	</script>
   <section class="invoice">
    <form method="post" action="${pageContext.request.contextPath }/sup/pay">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i> Service , Create hotel
            <small class="pull-right"><fmt:formatDate pattern="dd-MM-yyyy" value="${now}" /></small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="row invoice-info">
        <div class="col-sm-4 invoice-col">
          You
          <address>
            <strong>${account.username } ( ${hotel.name })</strong><br>
            <input type="hidden" value="${hotel.id }" name="idhotel">
           ${account.fullname }<br>
           ${account.address }<br>
            Card: ${account.identitycard }<br>
            Email: ${account.email }
          </address>
        </div>
        <!-- /.col -->
        <div class="col-sm-4 invoice-col">
          we
          <address>
            <strong>${about.name }</strong><br>
            ${about.address }<br>
           ${about.country }<br>
            Phone: ${about.phone }<br>
            Email: ${about.email }
          </address>
        </div>
        <!-- /.col -->
        <div class="col-sm-4 invoice-col">
          <b>Information Service</b><br>
          <br>
          <b>Service name:</b>${service.name }<br>
          <b>Payment Due:</b> <fmt:formatDate pattern="dd-MM-yyyy" value="${now}" /><br>
          <b>Service Type:</b> ${service.servicetype.name } <br>
              <b>Service Price: $</b>${service.price } / month
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Table row -->
      <div class="row">
        <div class="col-xs-12 table-responsive">
    
          <table class="table table-striped" id="order">
            <thead>
            <tr>
              <th>Service Core</th>
              <th>Service Name</th>
              <th>Service Type</th>
               <th>Service Price</th>
              <th>Start Date</th>
               <th>End Date</th>
              <th>Subtotal</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>${service.core }</td>
              <td>${service.name }</td>
              <td>${service.servicetype.name }</td>
                 <td>$ <span id="price">${service.price }</span>/Month</td>
              <td><fmt:formatDate pattern="dd-MM-yyyy" value="${now}" /></td>
           <td>   <input type="date" id="datepicker" name="enddate" /></td>
              <td>$ <span id="tatol">${service.price * 12 }
              
              </span><input type="hidden" name="price" id="tatolin">
              <input type="hidden" name="idac" value="${account.id }"> 
              <input type="hidden" name="idservice" value="${service.id }">
              </td>
            </tr>
           
            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row">
        <!-- accepted payments column -->
        <div class="col-xs-6">
          <p class="lead">Payment Methods:</p>
          <img src="${pageContext.request.contextPath }/resources/admin/dist/img/credit/visa.png" alt="Visa">
          <img src="${pageContext.request.contextPath }/resources/admin/dist/img/credit/mastercard.png" alt="Mastercard">
          <img src="${pageContext.request.contextPath }/resources/admin/dist/img/credit/american-express.png" alt="American Express">
          <img src="${pageContext.request.contextPath }/resources/admin/dist/img/credit/paypal2.png" alt="Paypal">

          <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
            Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg
            dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
          </p>
        </div>
        <!-- /.col -->
        <div class="col-xs-6">
          <p class="lead">Amount Due <fmt:formatDate pattern="dd-MM-yyyy" value="${now}" /></p>

      
        </div>
        
        <!-- /.col -->
      </div>
      <!-- /.row -->
  
      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
          <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
         
          <button type="submit" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
          </button>
       
          <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
            <i class="fa fa-download"></i> Generate PDF
          </button>
        </div>
      </div>
      </form>
    </section>