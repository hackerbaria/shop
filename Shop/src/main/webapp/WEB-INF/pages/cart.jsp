<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/bootstrap/js/jquery-1.11.2.min.js"/>"></script>
<title>Insert title here</title>
</head>
<body>
	
	<!-- Page Content -->
	
	<div class="container">
		<h3>Giỏ hàng sản phẩm</h3>
		<div class="row">
			<div class="col-md-12" id='cartShop'>
			<form action="update" method="get">
					<table class="table">
						<tr>
							<th width="10%">Xóa</th>
							<th width="10%">STT</th>
							<th width="50%">Sản phẩm</th>
							<th width="20%">Số lượng</th>
							<th width="10%">Thành tiền</th>
						</tr>
						<c:if test="${cartContain.listProduct.size()==0 || cartContain==null}">
							<tr>
								<td colspan="5"><h3>Không có sản phẩm nào trong giỏ hàng</h3></td>
							</tr>
						</c:if>
						<c:forEach items="${cartContain.listProduct}" var="p" varStatus="pStatus"> 
							<tr>
								<td><a href="javascript:removeCart(${p.key.id })" class=""><span class="glyphicon glyphicon-remove"></span></a></td>
								<td>${pStatus.index+1}</td>
								<td><h4>${p.key.name}</h4>
									<c:if test="${p.key.promotePrice==0}">
										${p.key.price} VND
									</c:if>
									<c:if test="${p.key.promotePrice!=0}">
										<s>${p.key.price} VND</s> - <h4>${p.key.promotePrice}</h4>
									</c:if>
									<img class="img-responsive" alt="" src="<c:url value="/resources/img/${p.key.bigImage}"/>" width="75px" height="100px"/></td>
								<td><input type="text" value="${p.value}" class='form-control' style='width:20%' id='${p.key.id}' name='${p.key.id}' maxlength="2"/></td>
								<td>${p.key.price*p.value} VND</td>
							</tr>
						 </c:forEach> 
						 <tr><td align="right" colspan="5"><input type='submit' class='form-control' style='width:20%' value='Cập nhật giỏ hàng'/></td></tr>
					</table>
				</form>
			</div>
		</div>
		<!-- End row 1 -->
		<div class="row">
			<div class="col-md-12 text-right" id='totalPrice'>Tổng cộng: ${cartContain.totalPrice}</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-right"><a href="${pageContext.request.contextPath}" class="button">Tiếp tục mua sắm</a></div>
		</div>
		<div class="row">
			<div class="col-md-12 text-right"><a href="movetopayment" class="button">Đăt hàng</a></div>
		</div>
	</div>
	<script type="text/javascript">
		function removeCart(id){
			var html='';
			$.ajax({
				type:'GET',
				url:'remove/'+id,
				dataType:'json',
				contentType: 'application/json',
				success:function(data){
					html+='<form action="update" method="get">';
					html+='<table class="table">';
					html+='<tr>';
					html+='<th width="10%">Xóa</th>';
					html+='<th width="10%">STT</th>';
					html+='<th width="50%">Sản phẩm</th>';
					html+='<th width="20%">Số lượng</th>';
					html+='<th width="10%">Thành tiền</th>';
					html+='</tr>';
					var index=0;
					$.each(data['listProduct'],function(k,v){
						index+=1;
						var product=$.parseJSON(k);
						html+="<tr>";
						html+="<td><a href='javascript:removeCart("+product.id+")'><span class='glyphicon glyphicon-remove'></span></a></td>"
						html+="<td>"+index+"</td>";
						if(product.promotePrice==0){
							html+="<td><h4>"+product.name+"</h4>"+product.price+" VND<img class='img-responsive' alt='No Image' src='<c:url value='/resources/img/ProductImages/"+product.bigImage+"'/>' width='75px' height='100px'/></td>";	
						}else{
							html+="<td><h4>"+product.name+"</h4><s>"+product.price+" VND </s> - <h4>"+product.promotePrice+" VND</h4><img class='img-responsive' alt='No Image' src='<c:url value='/resources/img/ProductImages/"+product.bigImage+"'/>' width='75px' height='100px'/></td>";
						}
						
						html+="<td><input type='text' value='"+v+"' class='form-control' style='width:20%' id='"+product.id+"' name='"+product.id+"' maxlength='2'/></td>";
						html+="<td>"+v*product.price+" VND</td>";
						html+="</tr>"
					});
					if(index==0){
						html+="<tr>";
							html+="<td colspan='5'><h3>Không có sản phẩm nào trong giỏ hàng</h3></td>";
						html+="</tr>";
					}
					html+="<tr><td align='right' colspan='5'><input type='submit' class='form-control' style='width:20%' value='Cập nhật giỏ hàng'/></td></tr>";
					html+='</table>';
					html+='</form>';
					$('#cartShop').html(html);
					$('#totalPrice').html("Tổng cộng: "+data['totalPrice']);
				},
				error: function (xhr, ajaxOptions, thrownError) {
			       alert(xhr.responseText);
			    }
				
			});
		}
		
	</script>
</body>
</html>
