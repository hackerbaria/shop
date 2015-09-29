<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">


<div class="container">

	
	<br />

	<spring:url value="/addNewProduct" var="userActionUrl" />

	<form:form class="form-horizontal" method="post" modelAttribute="product" action="${userActionUrl}">

		<form:hidden path="id" />

		
			<div class="form-group">
				<label class="col-sm-2 control-label">Tên Sản Phẩm</label>
				<div class="col-sm-10">
					<form:input path="productName" type="text" class="form-control " id="name" placeholder="Name" />
					<form:errors path="productName" class="control-label" />
				</div>
			</div>
		
		
		
			<div class="form-group">
				<label class="col-sm-2 control-label">Số Lượng</label>
				<div class="col-sm-4">
					<form:input path="inputAmount" type="text" class="form-control " id="inputAmount" placeholder="Số Lượng" />
					<form:errors path="inputAmount" class="control-label" />
				</div>
			</div>
		
		
		
			<div class="form-group">
				<label class="col-sm-2 control-label">Giá Tiền</label>
				<div class="col-sm-4">
					<form:input path="salePrice" type="text" class="form-control " id="salePrice" placeholder="Giá Tiền" />
					<form:errors path="salePrice" class="control-label" />
				</div>
			</div>
		
		
		
		<div class="form-group">
				<label class="col-sm-2 control-label">Loại Sản Phẩm</label>
				<div class="col-sm-4">
					<form:select path="productType">							
							<form:options items="${products}" itemValue="type"
								itemLabel="name" />
						</form:select>					
				</div>
			</div>
		
		<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-4">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Thêm</button>					
				</div>
			</div>
		
	</form:form>
	
	

</div>


</body>
</html>