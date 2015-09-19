<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	
	<!-- Bootstrap Core CSS -->
    <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="<c:url value="/css/admin_components/metisMenu/dist/metisMenu.min.css"/>" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<c:url value="/css/admin_components/timeline.css"/>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/css/admin_components/sb-admin-2.css"/>" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<c:url value="/css/admin_components/morrisjs/morris.css"/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value="/css/admin_components/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<title>
		<tiles:insertAttribute name="titles"></tiles:insertAttribute>
	</title>
	
</head>
<body>
	
	<div id="wrapper">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		
		
		<div id="page-wrapper" style="min-height:572px">
			<tiles:insertAttribute name="body"></tiles:insertAttribute>
		</div>
		<!-- End /#page-wrapper -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	<!-- End wrapper -->
	


	 <!-- Placed at the end of the document so the pages load faster -->
	 <!-- jQuery -->
    <script src="<c:url value="/bootstrap/js/jquery-1.11.2.min.js"/>"></script>

	
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value="/css/admin_components/metisMenu/dist/metisMenu.min.js"/>"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<c:url value="/css/admin_components/raphael/raphael-min.js"/>"></script>
    <script src="<c:url value="/css/admin_components/morrisjs/morris.min.js"/>"></script>
    

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/css/admin_components/sb-admin-2.js"/>"></script>
</body>
</html>