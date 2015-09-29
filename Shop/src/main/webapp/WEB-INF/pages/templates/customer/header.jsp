<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	
	
		
	
	
<style>
	.navbar-brand{
		font-size: 20pt;
	 }
</style>

</head>
<body>
	
	<!-- Header --> 
	<div class="container" >
		 <div class="row">
		 	<div class="col-md-3">                                                 
            <img src="resources/img/logo.png"" alt="Logo" style="width:200px;height:100px;">         
            </div>
            <div class="col-md-6" style="margin-top: 20px;">                               
            	<form action="${pageContext.request.contextPath}/product/search" class="form-inline" role="form">
                	<input type="text" class="form-control" name="key" id="usr" style="width: 70%" placeholder='Bạn muốn tìm gì?'>
                	<button type="submit" class="btn btn-info btn-md"><span class="glyphicon glyphicon-search"></span>Search</button>
            	</form>               
            </div>
            <div class="col-md-3" style="margin-top: 20px">
            
            <c:choose>
    			<c:when test="${sessionScope.user != null}">    			                                            
            			Chào, <a href='#'>${sessionScope.user.name}</a> | 
            			<a href='#'>Đăng xuất</a> |                        		                                               
            		    <a href="${pageContext.request.contextPath}/cart/show"><span class="glyphicon glyphicon-shopping-cart"></span></a>                       		    			        			
    			</c:when>
    			<c:otherwise>

        			<a href="${pageContext.request.contextPath}/login">Đăng nhập</a> | 
					<a href="">Đăng Ký</a> |
					<a href="${pageContext.request.contextPath}/cart/show"><span class="glyphicon glyphicon-shopping-cart"></span></a> 
    			</c:otherwise>
			</c:choose>
            
            </div>
		 </div>		
	</div> 
	
	<hr/>
	<!--end container --> 
</body>
</html>





