<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div class="container">
		<form:form method="POST" action="show" commandName="productType">
		<table>
			<tr>
				<td colspan="3"><h1>Trang Quản Lý Của Nhân Viên</h1></td>				
			</tr>
			
			<tr>
				<td><a href="show" role="button" class="btn btn-success btn-large">Bán Hàng</a></td>
				<td><a href="addNewProduct" role="button" class="btn btn-success btn-large">Nhập hàng</a></td>
				<td><a href="#" role="button" class="btn btn-success btn-large">Quản lý SP</a></td>
			</tr>		
			
			
		</table>
	</form:form>
        
	
	</div>
	<!-- End container -->
</body>
</html>