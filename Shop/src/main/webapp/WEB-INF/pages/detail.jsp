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
	
	<c:set var="p" value="${product}"/>
	<!-- Page content -->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img class="img-responsive" alt="" src="<c:url value="/resources/img/${p.bigImage}"/>"/>
			</div>
			<div class="col-md-6">
				<h2>${p.name}</h2>
				<h6>Mã sản phẩm: ${p.codePro }</h6>
				<form class="form-inline" action="${pageContext.request.contextPath}/cart/add/${p.id}">
					<table>
						<tr>
							<th>Hãng: </th>
							<td>${p.brand.name}</td>						
						</tr>
						<tr>
							<th valign="middle">Tình trạng: </th>
							<td valign="bottom">
								<c:if test="${p.amount > 0}">
									<h4 style="font-weight: bold;color: blue">Còn hàng</h4>
								</c:if>
								<c:if test="${p.amount <= 0}">
									<h4 style="font-weight: bold;color: red">Hết hàng</h4>
								</c:if>
							</td>						
						</tr>
						<tr>
							<th valign="middle">Giá:</th>
							<td>
								<h4 style="font-weight: bold;color: green">${p.price} VNĐ</h4>
							</td>
						</tr>
						<tr>
							<th>Số lượng:</th>
							<td>
								<div class="form-group">      								
        							<input type="text" class="form-control" maxlength="2" value="1" name="quantity"/>	      								
      								<div class="btn-group-vertical" role="group" aria-label="...">
	 									<button value="add" class="btn btn-xs">+</button>
	 									<button value="sub" class="btn btn-xs">-</button>	 									
									</div>	
      							</div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<button class="btn btn-danger" style="width: 100%">Thêm vào giỏ hàng</button><br/>
								<input type="submit" class="btn btn-primary btn-lg" value="Mua ngay" style="width:100%"/><br/>	
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- End row 1 -->
		<div class="row">
			<div class="col-md-12">
				<!-- Tab -->
				<div class="tabbable">
					<ul class="nav nav-tabs">
				        <li class="active"><a href="#tabDetail" data-toggle="tab">Thông tin chi tiết</a></li>
				        <li><a href="#tabVote" data-toggle="tab">Đánh giá sản phẩm</a></li>
	   				 </ul>
		    		<div class="tab-content">
		        		<div class="tab-pane active" id="tabDetail">
		        			<h3>Mô tả sản phẩm</h3>
		        			<p>${p.description}</p>
		        			<table>
		        			<tr>
		        			<td>
		        			${p.content}
		        			</td>
		        			</tr>
		        			</table>
				            
				            			            	
				            	
				        </div>
				        <div class="tab-pane" id="tabVote">
				            <h3>Chất lượng sản phẩm</h3>
				            <b>Lượt thích</b> 
				            <div id="result">${p.amountLike}</div>
				            <a href="javascript:likeProductAjax()" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-thumbs-up"></span>Thích</a>
				            <div id="commentContent">
				             <h3>Nhận xét sản phẩm</h3>
				            <c:if test="${p.commentRecords.size() == 0}">
				            	<b>Chưa có bình luận nào về sản phẩm</b>
				            </c:if>
				            
				        	<table>				            		
					            <c:forEach items="${p.commentRecords}" var="comment">
									<tr>
										<th>${comment.name}:</th>
									</tr>		          
									<tr>
										<td><p>${comment.content}</td>
									</tr>  	
					            </c:forEach>
				            </table>  
				            </div>
				            <h3>Bình luận của bạn</h3>
				            <form id="formComment" role="form" style="width: 50%">
				            	<div class="form-group">
				            		<label for="name">Họ tên bạn:</label>
      								<input type="text" class="form-control" id="name" placeholder="Enter your name">
				            	</div>
				            	
				            	<div class="form-group">
				            		<label for="email">Email:</label>
      								<input type="email" class="form-control" id="email" placeholder="Enter email">
				            	</div>
				            	<div class="form-group">
 									<label for="comment">Nhận xét:</label>
 									<textarea class="form-control" rows="5" id="content"></textarea>
								</div>
								<div class="form-group">
									<a href="javascript:commentAjax()" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-message-out"></span>Gửi</a>
								</div>
				            </form>
				        </div>
		    		</div>
	    		</div>
	    		<!-- End tab -->
			</div>
			<!-- End col -->
		</div>
		<!-- End row 2 -->
	</div>
	<!-- End container -->
	<script type="text/javascript">
    function likeProductAjax() {
    	alert('Cảm ơn bạn đã vote cho sản phẩm');
        $.ajax({
            url : '../like/${p.id}',
            success : function(data) {
                $('#result').html(data);
            }
        });
    }
    function commentAjax(){
        var name=$('#name').val();
        var email=$('#email').val();
        var content=$('#content').val();
        alert('Cảm ơn '+name+' đã nhận xét về sản phẩm này');
        $.ajax({
        	type:'GET',
        	dataType: 'json',        	
            url: '../comment/${p.id}?name='+name+'&email='+email+'&content='+content,
            success:function(data){
                	$('#name').val('');
                	$('#email').val('');
                	$('#content').val('');
                	var s='<table>';
                	for(var i=0;i<data.length;i++){  
                		s+='<tr><th>'+data[i].name+'</th><td>'+data[i].content+'</td></tr>'                	
                	}   
                	s+='</table>';
                	$('#commentContent').html(s);
                }
            });
    }
	</script>
</body>
</html>