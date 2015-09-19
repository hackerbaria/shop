<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	
	 <!-- NAVBAR
    ================================================== -->
    <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0px;">
            <div class="container">
                <!-- <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="http://www.jssor.com/index.html">Bootstrap Slider</a>
                </div> -->
                <div id="navbar" class="navbar-collapse collapse">                	
                    <ul class="nav navbar-nav">
                    	<c:forEach items="${mapSession['menu']}" var="m">
                    		 <c:if test="${m.subordinates.size() > 0}">
                    		 	<li class="dropdown">
		                        	<a class="dropdown-toggle" data-toggle="dropdown" href="${pageContext.request.contextPath}/${m.link}">
		                        		${m.name}<span class="caret"></span>
		          					</a>
		          					<ul class="dropdown-menu">
			          					<c:forEach items="${m.subordinates}" var="sm">			          						
			                        		<li><a href="${pageContext.request.contextPath}/product/showCategory?cateId=${sm.cateId}">${sm.name}</a></li>			                        
			          					</c:forEach>
		                        	</ul>
                        		</li>
                    		 </c:if>
                    		 <c:if test="${m.subordinates.size() == 0}">
                    		 	<li><a href="${pageContext.request.contextPath}/product/showCategory?cateId=${m.cateId}">${m.name}</a></li>
                    		 </c:if>
                    	</c:forEach>                       
                    </ul>
                </div>
            </div>
       </nav>

    </div>


	
</body>
</html>