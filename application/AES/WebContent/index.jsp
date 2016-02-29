<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<form action="login.jsp" style="padding-left: 5.2%;padding-top: 5%;">
    <button type="submit" class="btn btn-lg btn-info">Login</button>
</form>


<%@ page import="java.sql.*" %>
<%@ page import="bean.Provider" %>
<%@ page import="bean.PileBean" %>

<% 

Class.forName("org.sqlite.JDBC");
Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
Statement stat = conn.createStatement();

%>
<div class="page-header" style="padding-left: 5%;">
	<h1>Duterte Precinct Level Totals</h1>
</div>

<div class="col-md-6" style="padding-left: 5%;">
	<table class="table table-striped">
    	<thead>
              <tr>
                <th>Candidacy</th>
                <th>Name</th>
                <th>Votes</th>
                <th>Level</th>
                <th>Precinct</th>
                <th>City</th>
                <th>District</th>
                <th>Province</th>
                <th>Region</th>
              </tr>
		</thead>
		<tbody>     
			<%
			ResultSet duterte = stat.executeQuery("SELECT * FROM tapat WHERE name='Rodrigo Duterte';");
			while (duterte.next()) {	    
			    %>
			    	<tr>
			    		<td><%= duterte.getString("candidacy") %></td>
			    		<td><%= duterte.getString("name") %></td>
			    		<td><%= duterte.getString("vote") %></td>
			    		<td><%= duterte.getString("level") %></td>
			    		<td><%= duterte.getString("precinct") %></td>
			    		<td><%= duterte.getString("city") %></td>
			    		<td><%= duterte.getString("district") %></td>
			    		<td><%= duterte.getString("province") %></td>
			    		<td><%= duterte.getString("region") %></td>
			    	</tr>
			    <%
			}
			duterte.close();
			
			ResultSet totalduterte = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte';");
			%>
				<tr>
					<td></td>
					<td><strong>TOTAL VOTES</strong></td>
					<td style="text-decoration: underline;"><strong> <%= totalduterte.getString("TOTALVOTES") %> </strong></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>		
			<% totalduterte.close(); %>
    	</tbody>
	</table>
</div>

<div style="position: absolute; top: 15.5%; left: 50%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Binay Precinct Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>Precinct</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet binay = stat.executeQuery("SELECT * FROM tapat WHERE name='Jejomar Binay';");
				while (binay.next()) {	    
				    %>
				    	<tr>
				    		<td><%= binay.getString("candidacy") %></td>
				    		<td><%= binay.getString("name") %></td>
				    		<td><%= binay.getString("vote") %></td>
				    		<td><%= binay.getString("level") %></td>
				    		<td><%= binay.getString("precinct") %></td>
				    		<td><%= binay.getString("city") %></td>
				    		<td><%= binay.getString("district") %></td>
				    		<td><%= binay.getString("province") %></td>
				    		<td><%= binay.getString("region") %></td>
				    	</tr>
				    <%
				}
				binay.close();
				
				ResultSet totalbinay = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalbinay.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalbinay.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 90%; left: 3%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Santiago Precinct Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>Precinct</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet santiago = stat.executeQuery("SELECT * FROM tapat WHERE name='Miriam Santiago';");
				while (binay.next()) {	    
				    %>
				    	<tr>
				    		<td><%= santiago.getString("candidacy") %></td>
				    		<td><%= santiago.getString("name") %></td>
				    		<td><%= santiago.getString("vote") %></td>
				    		<td><%= santiago.getString("level") %></td>
				    		<td><%= santiago.getString("precinct") %></td>
				    		<td><%= santiago.getString("city") %></td>
				    		<td><%= santiago.getString("district") %></td>
				    		<td><%= santiago.getString("province") %></td>
				    		<td><%= santiago.getString("region") %></td>
				    	</tr>
				    <%
				}
				santiago.close();
				
				ResultSet totalsantiago = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalsantiago.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalsantiago.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 90%; left: 50%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Roxas Precinct Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>Precinct</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet roxas = stat.executeQuery("SELECT * FROM tapat WHERE name='Mar Roxas';");
				while (roxas.next()) {	    
				    %>
				    	<tr>
				    		<td><%= roxas.getString("candidacy") %></td>
				    		<td><%= roxas.getString("name") %></td>
				    		<td><%= roxas.getString("vote") %></td>
				    		<td><%= roxas.getString("level") %></td>
				    		<td><%= roxas.getString("precinct") %></td>
				    		<td><%= roxas.getString("city") %></td>
				    		<td><%= roxas.getString("district") %></td>
				    		<td><%= roxas.getString("province") %></td>
				    		<td><%= roxas.getString("region") %></td>
				    	</tr>
				    <%
				}
				roxas.close();
				
				ResultSet totalroxas = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalroxas.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalroxas.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 165%; left: 3%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Poe Precinct Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>Precinct</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet poe = stat.executeQuery("SELECT * FROM tapat WHERE name='Grace Poe';");
				while (poe.next()) {	    
				    %>
				    	<tr>
				    		<td><%= poe.getString("candidacy") %></td>
				    		<td><%= poe.getString("name") %></td>
				    		<td><%= poe.getString("vote") %></td>
				    		<td><%= poe.getString("level") %></td>
				    		<td><%= poe.getString("precinct") %></td>
				    		<td><%= poe.getString("city") %></td>
				    		<td><%= poe.getString("district") %></td>
				    		<td><%= poe.getString("province") %></td>
				    		<td><%= poe.getString("region") %></td>
				    	</tr>
				    <%
				}
				poe.close();
				
				ResultSet totalpoe = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalpoe.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalpoe.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 165%; left: 50%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Seneres Precinct Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>Precinct</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet seneres = stat.executeQuery("SELECT * FROM tapat WHERE name='Roy Seneres';");
				while (seneres.next()) {	    
				    %>
				    	<tr>
				    		<td><%= seneres.getString("candidacy") %></td>
				    		<td><%= seneres.getString("name") %></td>
				    		<td><%= seneres.getString("vote") %></td>
				    		<td><%= seneres.getString("level") %></td>
				    		<td><%= seneres.getString("precinct") %></td>
				    		<td><%= seneres.getString("city") %></td>
				    		<td><%= seneres.getString("district") %></td>
				    		<td><%= seneres.getString("province") %></td>
				    		<td><%= seneres.getString("region") %></td>
				    	</tr>
				    <%
				}
				seneres.close();
				
				ResultSet totalseneres = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Roy Seneres';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalseneres.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalseneres.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="width: 30em; position: absolute; top: 235%; left: 37%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>CITY LEVEL TOTALS</h1>
	</div>
</div>

<div style="position: absolute; top: 250%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Duterte City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet dutertecity = stat.executeQuery("SELECT * FROM city WHERE name='Rodrigo Duterte';");
				while (dutertecity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= dutertecity.getString("candidacy") %></td>
				    		<td><%= dutertecity.getString("name") %></td>
				    		<td><%= dutertecity.getString("vote") %></td>
				    		<td><%= dutertecity.getString("city") %></td>
				    		<td><%= dutertecity.getString("district") %></td>
				    		<td><%= dutertecity.getString("province") %></td>
				    		<td><%= dutertecity.getString("region") %></td>
				    	</tr>
				    <%
				}
				dutertecity.close();
				
				ResultSet totaldutertecity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Rodrigo Duterte';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totaldutertecity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totaldutertecity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 250%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Binay City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet binaycity = stat.executeQuery("SELECT * FROM city WHERE name='Jejomar Binay';");
				while (binaycity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= binaycity.getString("candidacy") %></td>
				    		<td><%= binaycity.getString("name") %></td>
				    		<td><%= binaycity.getString("vote") %></td>
				    		<td><%= binaycity.getString("city") %></td>
				    		<td><%= binaycity.getString("district") %></td>
				    		<td><%= binaycity.getString("province") %></td>
				    		<td><%= binaycity.getString("region") %></td>
				    	</tr>
				    <%
				}
				binaycity.close();
				
				ResultSet totalbinaycity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Jejomar Binay';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalbinaycity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalbinaycity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 320%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Santiago City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet santiagocity = stat.executeQuery("SELECT * FROM city WHERE name='Miriam Santiago';");
				while (santiagocity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= santiagocity.getString("candidacy") %></td>
				    		<td><%= santiagocity.getString("name") %></td>
				    		<td><%= santiagocity.getString("vote") %></td>
				    		<td><%= santiagocity.getString("city") %></td>
				    		<td><%= santiagocity.getString("district") %></td>
				    		<td><%= santiagocity.getString("province") %></td>
				    		<td><%= santiagocity.getString("region") %></td>
				    	</tr>
				    <%
				}
				santiagocity.close();
				
				ResultSet totalsantiagocity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Miriam Santiago';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalsantiagocity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalsantiagocity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 320%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Roxas City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet roxascity = stat.executeQuery("SELECT * FROM city WHERE name='Mar Roxas';");
				while (roxascity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= roxascity.getString("candidacy") %></td>
				    		<td><%= roxascity.getString("name") %></td>
				    		<td><%= roxascity.getString("vote") %></td>
				    		<td><%= roxascity.getString("city") %></td>
				    		<td><%= roxascity.getString("district") %></td>
				    		<td><%= roxascity.getString("province") %></td>
				    		<td><%= roxascity.getString("region") %></td>
				    	</tr>
				    <%
				}
				roxascity.close();
				
				ResultSet totalroxascity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Mar Roxas';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalroxascity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalroxascity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>


<div style="position: absolute; top: 390%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Poe City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet poecity = stat.executeQuery("SELECT * FROM city WHERE name='Grace Poe';");
				while (poecity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= poecity.getString("candidacy") %></td>
				    		<td><%= poecity.getString("name") %></td>
				    		<td><%= poecity.getString("vote") %></td>
				    		<td><%= poecity.getString("city") %></td>
				    		<td><%= poecity.getString("district") %></td>
				    		<td><%= poecity.getString("province") %></td>
				    		<td><%= poecity.getString("region") %></td>
				    	</tr>
				    <%
				}
				poecity.close();
				
				ResultSet totalpoecity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Grace Poe';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalpoecity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalpoecity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 390%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Seneres City Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>City</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet senerescity = stat.executeQuery("SELECT * FROM city WHERE name='Roy Seneres';");
				while (poecity.next()) {	    
				    %>
				    	<tr>
				    		<td><%= senerescity.getString("candidacy") %></td>
				    		<td><%= senerescity.getString("name") %></td>
				    		<td><%= senerescity.getString("vote") %></td>
				    		<td><%= senerescity.getString("city") %></td>
				    		<td><%= senerescity.getString("district") %></td>
				    		<td><%= senerescity.getString("province") %></td>
				    		<td><%= senerescity.getString("region") %></td>
				    	</tr>
				    <%
				}
				senerescity.close();
				
				ResultSet totalsenerescity = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM city WHERE name='Roy Seneres';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalsenerescity.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalsenerescity.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="width: 34em; position: absolute; top: 460%; left: 34%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>DISTRICT LEVEL TOTALS</h1>
	</div>
</div>

<div style="position: absolute; top: 480%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Duterte District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet dutertedistrict = stat.executeQuery("SELECT * FROM district WHERE name='Rodrigo Duterte';");
				while (dutertedistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= dutertedistrict.getString("candidacy") %></td>
				    		<td><%= dutertedistrict.getString("name") %></td>
				    		<td><%= dutertedistrict.getString("vote") %></td>
				    		<td><%= dutertedistrict.getString("district") %></td>
				    		<td><%= dutertedistrict.getString("province") %></td>
				    		<td><%= dutertedistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				dutertedistrict.close();
				
				ResultSet totaldutertedistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Rodrigo Duterte';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totaldutertedistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totaldutertedistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>


<div style="position: absolute; top: 480%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Binay District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet binaydistrict = stat.executeQuery("SELECT * FROM district WHERE name='Jejomar Binay';");
				while (binaydistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= binaydistrict.getString("candidacy") %></td>
				    		<td><%= binaydistrict.getString("name") %></td>
				    		<td><%= binaydistrict.getString("vote") %></td>
				    		<td><%= binaydistrict.getString("district") %></td>
				    		<td><%= binaydistrict.getString("province") %></td>
				    		<td><%= binaydistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				binaydistrict.close();
				
				ResultSet totalbinaydistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Jejomar Binay';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalbinaydistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalbinaydistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 520%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Poe District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet poedistrict = stat.executeQuery("SELECT * FROM district WHERE name='Grace Poe';");
				while (poedistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= poedistrict.getString("candidacy") %></td>
				    		<td><%= poedistrict.getString("name") %></td>
				    		<td><%= poedistrict.getString("vote") %></td>
				    		<td><%= poedistrict.getString("district") %></td>
				    		<td><%= poedistrict.getString("province") %></td>
				    		<td><%= poedistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				poedistrict.close();
				
				ResultSet totalpoedistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Grace Poe';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalpoedistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalpoedistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>


<div style="position: absolute; top: 520%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Roxas District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet roxasdistrict = stat.executeQuery("SELECT * FROM district WHERE name='Mar Roxas';");
				while (roxasdistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= roxasdistrict.getString("candidacy") %></td>
				    		<td><%= roxasdistrict.getString("name") %></td>
				    		<td><%= roxasdistrict.getString("vote") %></td>
				    		<td><%= roxasdistrict.getString("district") %></td>
				    		<td><%= roxasdistrict.getString("province") %></td>
				    		<td><%= roxasdistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				roxasdistrict.close();
				
				ResultSet totalroxasdistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Mar Roxas';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalroxasdistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalroxasdistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 560%; left: 8%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Santiago District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet santiagodistrict = stat.executeQuery("SELECT * FROM district WHERE name='Miriam Santiago';");
				while (santiagodistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= santiagodistrict.getString("candidacy") %></td>
				    		<td><%= santiagodistrict.getString("name") %></td>
				    		<td><%= santiagodistrict.getString("vote") %></td>
				    		<td><%= santiagodistrict.getString("district") %></td>
				    		<td><%= santiagodistrict.getString("province") %></td>
				    		<td><%= santiagodistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				santiagodistrict.close();
				
				ResultSet totalsantiagodistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Miriam Santiago';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalsantiagodistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalsantiagodistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 560%; left: 52%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Seneres District Level Totals</h1>
	</div>
	
	<div class="col-md-6" style="padding-left: 5%;">
		<table class="table table-striped">
	    	<thead>
	              <tr>
	                <th>Candidacy</th>
	                <th>Name</th>
	                <th>Votes</th>
	                <th>Level</th>
	                <th>District</th>
	                <th>Province</th>
	                <th>Region</th>
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet seneresdistrict = stat.executeQuery("SELECT * FROM district WHERE name='Roy Seneres';");
				while (seneresdistrict.next()) {	    
				    %>
				    	<tr>
				    		<td><%= seneresdistrict.getString("candidacy") %></td>
				    		<td><%= seneresdistrict.getString("name") %></td>
				    		<td><%= seneresdistrict.getString("vote") %></td>
				    		<td><%= seneresdistrict.getString("district") %></td>
				    		<td><%= seneresdistrict.getString("province") %></td>
				    		<td><%= seneresdistrict.getString("region") %></td>
				    	</tr>
				    <%
				}
				seneresdistrict.close();
				
				ResultSet totalseneresdistrict = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM district WHERE name='Roy Seneres';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalseneresdistrict.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalseneresdistrict.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<%	stat.close();
	conn.close();	%>
	
</body>
</html>