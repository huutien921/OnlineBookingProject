<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>
<div class="container">
        <div class="row d-flex">
        
        <c:forEach var="blog" items="${blogs }">
			 <div class="col-md-4 d-flex ftco-animate fadeInUp ftco-animated">
            <div class="blog-entry align-self-stretch">
            	
            	
              <a class="block-20" style="background-image: url('${pageContext.request.contextPath }/resources/user/images/');" href="${pageContext.request.contextPath }/blog/blog_detail">
              </a>
              <div class="text">
              	<span class="tag">Tips, Travel</span>
                <h3 class="heading mt-3"><a href="#">${blog.title }</a></h3>
                <div class="meta mb-3">
                  <div><a href="#">October 3, 2018</a></div>
                  <div><a href="#">${blog.account.fullname }</a></div>
                  <div><a class="meta-chat" href="#"><span class="icon-chat"></span> 3</a></div>
                </div>
              </div>
            </div>
          </div>	
	</c:forEach>
        
         
          
          
          
          
          
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>