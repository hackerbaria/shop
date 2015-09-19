<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p class="lead">Nhãn hiệu</p>
				<div class="list-group">
					<a href="#" class="list-group-item"></a>
					<a href="#" class="list-group-item"></a>
				</div>
				
				<p class="lead">Phân loại</p>
				<div class="list-group">
					<a href="#" class="list-group-item"></a>
					<a href="#" class="list-group-item"></a>
				</div>
			</div>
			<!-- End col 3 -->
			<div class="col-md-9">
				<c:if test="${empty listProduct}">
					<h3>Không có sản phẩm nào</h3>
				</c:if>
				<c:if test="${not empty listProduct}">	
					<h3>Có ${listProduct.size()} sản phẩm</h3>			
					<c:forEach var="p" items="${listProduct}">
							<div class="col-md-4 col-sm-8 hero-feature">
								<div class="thumbnail">
									<a href="${contextPath}/product/detail/${p.id}"><img
										src="${contextPath}/resources/img/${p.tinyImage}" alt=""></a>
									<div class="caption">
										<h3>${p.name}</h3>										
										<p>	Giá: <strike>${p.price} VND</strike></p>
										<div class="promoteprice"><p>Giá KM: ${p.promotePrice} VND</p></div>										
										<p>
											<a href="${contextPath}/cart/add/${p.id}?quantity=1" class="btn btn-primary">Mua ngay</a> 
											<a href="${contextPath}/product/detail/${p.id}" class="btn btn-default">Chi tiết</a>
										</p>
									</div>
								</div>
							</div>
					</c:forEach>
			</c:if>
			</div>
			<!-- End col 9 -->
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
</body>
</html>