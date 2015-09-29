<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="listProduct" value="${cartContain.listProduct}"/>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2>Thông tin khách hàng</h2>								
				<form:form action="order" role="form" commandName="customer" method="GET">
					<div class="form-group">
						<label for="name">Họ tên khách hàng: </label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ tên của bạn">
					</div>
					<div class="form-group">
						<label for="phone">Số điện thoại: </label>
						<input type="text" class="form-control" id="phone" name="phone" placeholder="Xin nhập số điện thoại chính xác" />
					</div>					
					<div class="form-group">
						<label for="address" >Địa chỉ cụ thể: </label>
						<textarea class="form-control" id="address" name="address" rows="5" placeholder="Xin nhập địa chỉ chính xác"></textarea>
					</div>
					
					<div class="form-group">
						<label for="recieveMoney">Tiền Nhận Được: </label>
						<input type="text" class="form-control" id="recieveMoney" name="recieveMoney" placeholder="Số Tiền Nhận Được" />
					</div>
					
					<div class="form-group">
						<label for="backMoney">Tiền thối lại: </label>
						<input type="text" class="form-control" id="backMoney" name="backMoney" placeholder="Số Tiền Nhận Được" />
					</div>
					
					<input type="submit" class="btn btn-primary btn-lg" value="Xuất Hóa Đơn"/><br/>
				</form:form>
			</div>
			<!-- End col 1 -->
			<div class="col-md-6">
				<h2>Thông tin đơn hàng</h2> <h3>${listProduct.size()} sản phẩm</h3>
				<table class="table">
					<c:forEach items="${listProduct}" var="p">
					<tr>
						<td>${p.value} x <a href="${pageContext.request.contextPath}/product/detail/${p.key.id}">${p.key.productName}</a></td>
						<td>
							
								${p.value*p.key.salePrice} VNĐ
							
						</td>
					</tr>
					</c:forEach>
					<tr>
						<td>Tổng giá:</td>
						<td>${cartContain.totalPrice} VNĐ</td>
					</tr>
					<tr>
						<td>Phí vận chuyển</td>
						<td>Miễn phí</td>
					</tr>
					<tr>
						<td><h3>Thành tiền </h3></td>
						<td><h3>${cartContain.totalPrice} VNĐ</h3></td>
					</tr>
					
					<tr><td colspan="2"><a href="show">Thay đổi đơn hàng</a></td></tr>
				</table>
			</div>
			<!-- End col 2 -->
		</div>
		<!-- End row -->
		</div>
		<!-- End container -->
</body>
</html>