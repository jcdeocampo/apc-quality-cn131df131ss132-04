<%@ page import="java.sql.*" %>
<%@ page import="bean.Provider" %>

<%
String username, firstName, lastName, designation;

Class.forName("org.sqlite.JDBC");
Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
Statement stat = conn.createStatement();
%>

<%
String un = (String)session.getAttribute("username");
ResultSet rs = stat.executeQuery("select * from user where username='" + un + "'");

username = rs.getString(1);
firstName = rs.getString(3);
lastName = rs.getString(4);
designation = rs.getString(5);

%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/docs.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body>

        <div class="col-sm-4" style="position:absolute; top: 5%; left: 33%;">
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><b>User Information</b></h3>
            </div>
            <div class="panel-body">
              <b>USERNAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <%=username %> <br />
			  <b>FIRST NAME: &nbsp;&nbsp;&nbsp;</b> <%=firstName %> <br />
			  <b>LAST NAME: &nbsp;&nbsp;&nbsp;&nbsp;</b> <%=lastName %> <br />
			  <b>DESIGNATION:&nbsp;</b> <%=designation %> <br />
			  <img src="" style="border: .5px solid; width: 20%; height: 50%; position: absolute; top: 30%; left:73%;"></img>
            </div>
          </div>
         </div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div class="well well-large">
<h2 style="text-align:center;">GUIDELINES</h2>
<h4 style="text-align:center;"> The following points below are important guidelines for all BOC / BEI personnel. <br /> Kindly read these for optimal submission of data.</h4><br>
<center>
<p><b>1).</b> Only use checked and registered devices as their respective specifications will be needed.</p>
<p><b>2).</b> Ensure that you are at your assigned position as the GPS data of this area will be needed.</p>
<p><b>3).</b> Do not move your assigned unit drastically away from its assigned area as this would affect the validation process.</p>
<p><b>4).</b> Ensure that you have your respective Masters List with you. As BEI/BOC personnel, you will need this for validating incoming data.</p>
<p><b>5).</b> HONESTY IS THE BEST POLICY. As public servants, the integrity of the elections are affected by your actions. <b>BAWAL ANG CORRUPT</b>.</p>
</center>
</div>

<form action="logoutprocess.jsp" style="position:absolute; top: 75%; left: 43%;">
    <button type="submit" class="btn btn-lg btn-info">Logout</button>
</form>

<form action="pile.jsp" style="position:absolute; top: 75%; left: 51%;">
    <button type="submit" class="btn btn-lg btn-info">Pending</button>
</form>
</body>
</html>