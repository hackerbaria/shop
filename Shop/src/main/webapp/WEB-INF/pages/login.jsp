<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

 <div class="container">
 	 <div class="col-md-6">
 	 	<form:form role="form" action="login" commandName="customer" >
	        <h5 class="form-signin-heading"><b>Khách hàng mới</b></h5>
	        <p>Hãy tạo cho mình một tài khoản, bạn sẽ được các ưu đãi chỉ dành cho thành viên.</p>
	        
	        <div class="col-md-7"></div>
	        <div class="col-md-5"><button class="btn-primary btn-block" type="submit">Tạo tài khoản</button></div>
	     </form:form>  
 	 </div>
	 <div class="col-md-6">
	      <form:form role="form" action="login" commandName="customer" >
	        <h5 class="form-signin-heading"><b>Bạn đã có tài khoản</b></h5>
	        <p>Nếu ban đã đăng ký, bạn vui lòng đăng nhâp vào hệ thống.</p>
	        <div class="form-group">
	        	<label for="inputEmail" >Địa chỉ Email</label>
	        	<form:input type="email" path="username" class="form-control" placeholder="Email address" required="true"/>
	        </div>
	        <div class="form-group">
	        	<label for="inputPassword">Mật Khẩu</label>
	        	<form:input type="password" path="password" class="form-control" placeholder="Password" required="true"/>
	        </div>
	        <div class="checkbox">
    			<label><input type="checkbox"> Ghi nhớ mật khẩu</label>
     
    		</div>
	        <div class="col-md-7"></div>
	        <div class="col-md-5"><button class="btn-primary btn-block" type="submit">Đăng Nhập</button></div>
	     </form:form>  
	</div>     
 </div> 
</body>
</html>