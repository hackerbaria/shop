<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>Signin Template for Bootstrap</title>    
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">   
    <link href="signin.css" rel="stylesheet">    
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>   
  </head>
  <style type="text/css">
  .form-signin {
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
	}
	* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
	}
	user agent stylesheetform {
    display: block;
    margin-top: 0em;
	}
  
  </style>
  <body>

    <div class="container">

      <form:form class="form-signin" action="login" method="post" modelAttribute="user">
        <h2 class="form-signin-heading">Login Form</h2>
        <label for="username" class="sr-only">Tài Khoản</label>
        <form:input path="userName" class="form-control" placeholder="UserName" />
        <label for="password" class="sr-only">Mật Khẩu</label>
        <form:input path="password" class="form-control" placeholder="Password" />        
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form:form>

    </div> 


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>