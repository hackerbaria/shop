<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang Chính của Administrator</title>
</head>
<body>
<div class="container">
		<form:form method="POST" action="show" commandName="productType">
		<table>
			<tr>
				<td colspan="3"><h1>Trang Quản Lý Của Chủ Cửa Hàng</h1></td>				
			</tr>
			
			<tr>
				<td><a href="timkiemAdmin" role="button" class="btn btn-success btn-large">Tìm Kiếm</a></td>
				<td></td>
				<td><a href="thongkeAdmin" role="button" class="btn btn-success btn-large">Thống kê</a></td>
			</tr>		
			
			
		</table>
	</form:form>
        
	
	</div>
</body>
</html>