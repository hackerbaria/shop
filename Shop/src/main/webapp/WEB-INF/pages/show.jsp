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
		<h2>Spring's form select, option, options example</h2>

	<form:form method="POST" commandName="customerForm">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>

			<tr>
				<td>Loại Linh Kiện :</td>
				<td><form:select path="country">
					  <form:option value="NONE" label="--- Select ---" />
					  <form:options items="${countryList}" />
				       </form:select>
                                </td>
				<td><form:errors path="country" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Tên Sản Phẩm :</td>
				<td><form:select path="javaSkills" items="${javaSkillsList}"
					multiple="true" /></td>
				<td><form:errors path="javaSkills" cssClass="error" /></td>
			</tr>

			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>
	</div>
	<!-- End container -->
</body>
</html>