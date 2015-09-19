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
            <h1>MASTER</h1>         
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
	<!--end container --> 
</body>
</html>

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        		<h2 class="modal-title" id="myModalLabel">Login to Your Account</h2>
      		</div>
      		<div class="modal-body login-modal">
      			<p>Stack Overflow is a question and answer site for professional and enthusiast programmers. It's 100% free, no registration required</p>
      			<br/>
      			<div class="clearfix"></div>
      			<div id='social-icons-conatainer'>
	        		<div class='modal-body-left'>
	        			<div class="form-group">
		              		<input type="text" id="username" placeholder="Enter your name" value="" class="form-control login-field">
		              		<i class="fa fa-user login-field-icon"></i>
		            	</div>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass" placeholder="Password" value="" class="form-control login-field">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
		
		            	<a href="#" class="btn btn-success modal-login-btn">Login</a>
		            	<a href="#" class="login-link text-center">Lost your password?</a>
	        		</div>
	        	
	        		<div class='modal-body-right'>
	        			<div class="modal-social-icons">
	        				<a href='#' class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Sign In with Facebook </a>
	        				<a href='#' class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Sign In with Twitter </a>
	        				<a href='#' class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Sign In with Google </a>
	        				<a href='#' class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Sign In with Linkedin </a>
	        			</div> 
	        		</div>	
	        		<div id='center-line'> OR </div>
	        	</div>																												
        		<div class="clearfix"></div>
        		
        		<div class="form-group modal-register-btn">
        			<button class="btn btn-default"> New User Please Register</button>
        		</div>
      		</div>
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		</div>
    	</div>
  	</div>
</div>


