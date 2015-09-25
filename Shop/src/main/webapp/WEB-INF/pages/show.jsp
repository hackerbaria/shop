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
		<form:form method="POST" commandName="product">
		<table>
			<tr>
				<td>Loại Linh Kiện:</td>
				<td><form:select path="name">
					  <form:option value="" label="...." />
					  <form:options items="${products}" itemsValue="id" itemLabel="name" />
				       </form:select>
                                </td>
				<td><form:errors path="name" cssStyle="color: #ff0000;" /></td>
			</tr>
			
			<tr>
			</tr>
			
			<tr>
				<td>Tên Sản Phẩm:</td>
				<td><form:select path="name">
					  <form:option value="" label="...." />
					  <form:options items="${products}" itemsValue="id" itemLabel="name" />
				       </form:select>
                                </td>
				<td><form:errors path="name" cssStyle="color: #ff0000;" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Submit"></td>
			</tr>
			<tr>
		</table>
	</form:form>
        
	
	</div>
	<!-- End container -->
</body>
</html>