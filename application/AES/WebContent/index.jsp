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

final int precinctNumber = 6;
final int attributeCount = 10;

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
int dutertetotal = 0;
for(int n = 1; n < precinctNumber; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Rodrigo Duterte' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% dutertetotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= dutertetotal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>

<div style="position:absolute; top: 16.25%; left: 50%;">
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

int binaytotal = 0;
for(int n = 1; n < 7; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Jejomar Binay' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% binaytotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= binaytotal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>
      </div>

<div style="position:absolute; top: 100%; left: 3%;">
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

int santiagototal = 0;
for(int n = 1; n < precinctNumber; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Miriam Santiago' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% santiagototal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= santiagototal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>
       </div>
       
<div style="position:absolute; top: 100%; left: 50%;">
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

int roxastotal = 0;
for(int n = 1; n < precinctNumber; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Mar Roxas' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% roxastotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= roxastotal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>
       </div>
       
<div style="position:absolute; top: 185%; left: 3%;">
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

int poetotal = 0;
for(int n = 1; n < precinctNumber; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Grace Poe' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% poetotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= poetotal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>
       </div>

<div style="position:absolute; top: 185%; left: 50%;">
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

int senerestotal = 0;
for(int n = 1; n < precinctNumber; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Roy Seneres' and precinct='" + n + "'");
	for(int i = 1; i < attributeCount; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% senerestotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><strong><%= senerestotal %></strong></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>

            </tbody>
          </table>
        </div>
       </div> 
<% stat.close();
conn.close();  %>
</body>
</html>