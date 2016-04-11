<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/docs.min.js"></script>
</head>

<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
session.invalidate();
//session.setAttribute("session","FALSE");

%>
<div class="alert alert-success" style="position: absolute; top: 40%; left: 35%;">
        <strong> You have successfully logged out!</strong> You will be redirected to the index page
      </div>
	

 <META http-equiv="refresh" content="2.5;URL=index5.jsp">