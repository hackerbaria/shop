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
				<c:set var="user" value="${sessionScope.user }"/>
				<c:if test="${user == null}">
					<p>Nếu bạn đã có tài khoản, xin mời <a href="${pageContext.request.contextPath}/login">đăng nhập</a></p>
					<p>Nếu bạn chưa có tài khoản, xin mời <a href="#">đăng ký</a></p>
					<p>Bạn có thể nhập thông tin trực tiếp ở dưới</p>
				</c:if>
				<c:if test="${user != null }">
					<p>Chào ${user.name }</p>
					<p>Thông tin của bạn như bên dưới, hãy chỉnh sửa nếu muốn thay đổi</p>
				</c:if>
				<form:form action="order" role="form" commandName="customer" method="GET">
					<div class="form-group">
						<label for="name">Họ tên khách hàng: </label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ tên của bạn" value="${user.name}">
					</div>
					<div class="form-group">
						<label for="phone">Số điện thoại: </label>
						<input type="text" class="form-control" id="phone" name="phone" placeholder="Xin nhập số điện thoại chính xác" value="${user.cusPhone}"/>
					</div>
					<div class="form-group">
						<label>Địa chỉ nhận hàng: </label>
					</div>
					<div class="form-group">
						<label for="city">Thành phố:</label>
						<select name="city" id="city">
							<option>Thành phố</option>
							<option>TP. Hồ Chí Minh</option>
							<option>Hà Nội</option>
						</select>
					</div>
					<div class="form-group">
						<label for="address" >Địa chỉ cụ thể: <p class="text-muted"><i>Ví dụ: 3/4/5 đường Lã Xuân Oai, phường Tăng Nhơn Phú A, quận 9, Tp. Hồ Chí Minh</i></p></label>
						<textarea class="form-control" id="address" name="address" rows="5" placeholder="Xin nhập địa chỉ chính xác">${user.cusAddressShip}</textarea>
					</div>
					<div class="form-group">
						<label for="notes">Ghi chú:</label>
						<textarea class="form-control" id="notes" name="notes" rows="5" placeholder="Ghi chú cho sản phẩm này"></textarea>
					</div>
					<input type="submit" class="btn btn-primary btn-lg" value="Xác nhận"/><br/>
				</form:form>
			</div>
			<!-- End col 1 -->
			<div class="col-md-6">
				<h2>Thông tin đơn hàng</h2> <h3>${listProduct.size()} sản phẩm</h3>
				<table class="table">
					<c:forEach items="${listProduct}" var="p">
					<tr>
						<td>${p.value} x <a href="${pageContext.request.contextPath}/product/detail/${p.key.id}">${p.key.name}</a></td>
						<td>
							<c:if test="${p.key.promotePrice==0}">
								${p.value*p.key.price} VNĐ
							</c:if>
							<c:if test="${p.key.promotePrice!=0}">
								${p.value*p.key.promotePrice} VNĐ
							</c:if>
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
					<tr>
						<td colspan="2">
							<p class="text-muted"><i>Thời gian giao đơn hàng này từ 2 - 3 ngày làm việc, không kể Thứ 7 & Chủ Nhật</i></p>
						</td>
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