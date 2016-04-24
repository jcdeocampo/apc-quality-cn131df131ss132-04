<%@page import="bean.LoginBean"%>
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
boolean status=LoginDao.validate(obj);
if(status){  
	%>
	  <div class="alert alert-success" style="position: absolute; top: 40%; left: 32.5%;">
        <strong> You have successfully logged in!</strong> You will be redirected to page containing your guidelines
      </div>
	
	<%

String username = request.getParameter("username");
session.setAttribute("session","TRUE");
session.setAttribute("username", username);
LoginDao.closeCon();

%> <META http-equiv="refresh" content="2.5;URL=profile.jsp"> <%
}  
else  
{  
out.print("Sorry, username or password error"); 
%> <META http-equiv="refresh" content="1;URL=login.jsp"> <%
}  
%>  