<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">		
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link href='http://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'>
		
<link rel="stylesheet" href="/css/font-awesome.min.css"/>
	
<link rel="stylesheet" href="/css/style.css" />
<script src="/js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/HomePage.css">
</head>
<body>
	<!-- Page Content -->
	<div class="container">

		<!-- Title -->
		<div class="row">
			<div class="col-lg-12">
				<h3>Sản Phẩm</h3>
			</div>
		</div>

		<!-- Page Features -->
		<div class="row text-center">
			<!-- list of the best feature products. -->
			<c:if test="${not empty listProduct}">				
					<c:forEach var="p" items="${listProduct}">					
						<div class="col-md-3 col-sm-6 hero-feature">
								<div class="thumbnail">
									<a href="cart/add/${p.id}?quantity=1"><img
										src="resources/img/${p.image}" alt=""></a>
									<div class="caption">
										<h3>${p.productName}</h3>																		
										<div class="promoteprice"><p>Giá: ${p.salePrice} VND</p></div>										
										<p style="visibility: collapse;">hidden</p>																									
										<p>
											<a href="cart/add/${p.id}?quantity=1" class="btn btn-primary">Mua ngay</a> <a href="product/detail/${p.id}"
												class="btn btn-default">Chi tiết</a>
										</p>
									</div>
								</div>
							</div>
							
					</c:forEach>				
			</c:if>
		</div>

	</div>			
</body>
</html>
