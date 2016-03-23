<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="jquery/jquery-latest.js"></script> 
	<script type="text/javascript" src="jquery/jquery.tablesorter.js"></script> 
	
<title>AES - Index</title>
</head>
<body>
		<form action="login.jsp" style="padding-left: 5.2%;padding-top: 5%;">
		    <button type="submit" class="btn btn-lg btn-info">Login</button>
		</form>
    	<div class="page-header" style="padding-left: 5%;">
			<h1>Region: National Capital Region</h1>
		</div>
<%
	Class.forName("org.sqlite.JDBC");
	Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
	Statement stat = conn.createStatement();
%>
<div class="container">
	<div class="col-md-6">
	<table id="ncr" class="tablesorter table table-striped">
    	<thead>
              <tr>
                <th>Candidacy</th>
                <th>Candidate</th>
                <th>Votes</th>
              </tr>
		</thead>
		<tbody>     
			<%
			ResultSet totalduterte = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and region='NCR';");
			String dutertetotal = totalduterte.getString("TOTALVOTES");
			totalduterte.close();
			
			ResultSet regionNCRduterte = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
			while (regionNCRduterte.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRduterte.getString("candidacy") %></td>
			    		<td><%= regionNCRduterte.getString("name") %></td>
			    		<td><%= dutertetotal %></td>
			    	</tr>
			    <%
			}
			regionNCRduterte.close();	%>
			
			<%
			ResultSet totalroxas = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and region='NCR';");
			String roxastotal = totalroxas.getString("TOTALVOTES");
			totalroxas.close();
			
			ResultSet regionNCRroxas = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
			while (regionNCRroxas.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRroxas.getString("candidacy") %></td>
			    		<td><%= regionNCRroxas.getString("name") %></td>
			    		<td><%= roxastotal %></td>
			    	</tr>
			    <%
			}
			regionNCRroxas.close();	%>
			
			<%
			ResultSet totalpoe = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and region='NCR';");
			String poetotal = totalpoe.getString("TOTALVOTES");
			totalpoe.close();
			
			ResultSet regionNCRpoe = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
			while (regionNCRpoe.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRpoe.getString("candidacy") %></td>
			    		<td><%= regionNCRpoe.getString("name") %></td>
			    		<td><%= poetotal %></td>
			    	</tr>
			    <%
			}
			regionNCRpoe.close();	%>
			
			<%
			ResultSet totalbinay = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and region='NCR';");
			String binaytotal = totalbinay.getString("TOTALVOTES");
			totalbinay.close();
			
			ResultSet regionNCRbinay = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
			while (regionNCRbinay.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbinay.getString("candidacy") %></td>
			    		<td><%= regionNCRbinay.getString("name") %></td>
			    		<td><%= binaytotal %></td>
			    	</tr>
			    <%
			}
			regionNCRbinay.close();	%>
			
			<%
			ResultSet totalsantiago = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and region='NCR';");
			String santiagototal = totalsantiago.getString("TOTALVOTES");
			totalsantiago.close();
			
			ResultSet regionNCRsantiago = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
			while (regionNCRsantiago.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRsantiago.getString("candidacy") %></td>
			    		<td><%= regionNCRsantiago.getString("name") %></td>
			    		<td><%= santiagototal %></td>
			    	</tr>
			    <%
			}
			regionNCRsantiago.close();	%>
			
			<%
			ResultSet totalmarcos = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and region='NCR';");
			String marcostotal = totalmarcos.getString("TOTALVOTES");
			totalmarcos.close();
			
			ResultSet regionNCRmarcos = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
			while (regionNCRmarcos.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRmarcos.getString("candidacy") %></td>
			    		<td><%= regionNCRmarcos.getString("name") %></td>
			    		<td><%= marcostotal %></td>
			    	</tr>
			    <%
			}
			regionNCRmarcos.close();	%>
			
			<%
			ResultSet totalrobredo = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and region='NCR';");
			String robredototal = totalrobredo.getString("TOTALVOTES");
			totalrobredo.close();
			
			ResultSet regionNCRrobredo = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
			while (regionNCRrobredo.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrobredo.getString("candidacy") %></td>
			    		<td><%= regionNCRrobredo.getString("name") %></td>
			    		<td><%= robredototal %></td>
			    	</tr>
			    <%
			}
			regionNCRrobredo.close();	%>
			
			<%
			ResultSet totalhonasan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and region='NCR';");
			String honasantotal = totalhonasan.getString("TOTALVOTES");
			totalhonasan.close();
			
			ResultSet regionNCRhonasan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
			while (regionNCRhonasan.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRhonasan.getString("candidacy") %></td>
			    		<td><%= regionNCRhonasan.getString("name") %></td>
			    		<td><%= honasantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRhonasan.close();	%>
			
			<%
			ResultSet totaltrillanes = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and region='NCR';");
			String trillanestotal = totaltrillanes.getString("TOTALVOTES");
			totaltrillanes.close();
			
			ResultSet regionNCRtrillanes = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
			while (regionNCRtrillanes.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRtrillanes.getString("candidacy") %></td>
			    		<td><%= regionNCRtrillanes.getString("name") %></td>
			    		<td><%= trillanestotal %></td>
			    	</tr>
			    <%
			}
			regionNCRtrillanes.close();	%>
			
			<%
			ResultSet totalescudero = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and region='NCR';");
			String escuderototal = totalescudero.getString("TOTALVOTES");
			totalescudero.close();
			
			ResultSet regionNCRescudero = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
			while (regionNCRescudero.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRescudero.getString("candidacy") %></td>
			    		<td><%= regionNCRescudero.getString("name") %></td>
			    		<td><%= escuderototal %></td>
			    	</tr>
			    <%
			}
			regionNCRescudero.close();	%>
			
			<%
			ResultSet totalalan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and region='NCR';");
			String alantotal = totalalan.getString("TOTALVOTES");
			totalalan.close();
			
			ResultSet regionNCRalan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
			while (regionNCRmarcos.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalan.getString("candidacy") %></td>
			    		<td><%= regionNCRalan.getString("name") %></td>
			    		<td><%= alantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRalan.close();	%>
			
			<%
			ResultSet totalalunan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and region='NCR';");
			String alunantotal = totalalunan.getString("TOTALVOTES");
			totalalunan.close();
			
			ResultSet regionNCRalunan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
			while (regionNCRalunan.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalunan.getString("candidacy") %></td>
			    		<td><%= regionNCRalunan.getString("name") %></td>
			    		<td><%= alunantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRalunan.close();	%>
			
			<%
			ResultSet totalbello = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and region='NCR';");
			String bellototal = totalbello.getString("TOTALVOTES");
			totalbello.close();
			
			ResultSet regionNCRbello = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
			while (regionNCRbello.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbello.getString("candidacy") %></td>
			    		<td><%= regionNCRbello.getString("name") %></td>
			    		<td><%= bellototal %></td>
			    	</tr>
			    <%
			}
			regionNCRbello.close();	%>
			
			<%
			ResultSet totallacson = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and region='NCR';");
			String lacsontotal = totallacson.getString("TOTALVOTES");
			totallacson.close();
			
			ResultSet regionNCRlacson= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
			while (regionNCRlacson.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlacson.getString("candidacy") %></td>
			    		<td><%= regionNCRlacson.getString("name") %></td>
			    		<td><%= lacsontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRlacson.close();	%>
			
			<%
			ResultSet totalambolodto = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and region='NCR';");
			String ambolodtototal = totalambolodto.getString("TOTALVOTES");
			totalambolodto.close();
			
			ResultSet regionNCRambolodto = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
			while (regionNCRambolodto.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRambolodto.getString("candidacy") %></td>
			    		<td><%= regionNCRambolodto.getString("name") %></td>
			    		<td><%= ambolodtototal %></td>
			    	</tr>
			    <%
			}
			regionNCRambolodto.close();	%>
			
			<%
			ResultSet totalatty = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and region='NCR';");
			String attytotal = totalatty.getString("TOTALVOTES");
			totalatty.close();
			
			ResultSet regionNCRatty = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
			while (regionNCRatty.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRatty.getString("candidacy") %></td>
			    		<td><%= regionNCRatty.getString("name") %></td>
			    		<td><%= attytotal %></td>
			    	</tr>
			    <%
			}
			regionNCRatty.close();	%>
			
			<%
			ResultSet totalwin = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and region='NCR';");
			String wintotal = totalwin.getString("TOTALVOTES");
			totalwin.close();
			
			ResultSet regionNCRwin = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
			while (regionNCRwin.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRwin.getString("candidacy") %></td>
			    		<td><%= regionNCRwin.getString("name") %></td>
			    		<td><%= wintotal %></td>
			    	</tr>
			    <%
			}
			regionNCRwin.close();	%>
			
			<%
			ResultSet totalkiram = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and region='NCR';");
			String kiramtotal = totalkiram.getString("TOTALVOTES");
			totalkiram.close();
			
			ResultSet regionNCRkiram = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
			while (regionNCRkiram.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkiram.getString("candidacy") %></td>
			    		<td><%= regionNCRkiram.getString("name") %></td>
			    		<td><%= kiramtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRkiram.close();	%>
			
			<%
			ResultSet totalaldin = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and region='NCR';");
			String aldintotal = totalaldin.getString("TOTALVOTES");
			totalaldin.close();
			
			ResultSet regionNCRaldin = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
			while (regionNCRaldin.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRaldin.getString("candidacy") %></td>
			    		<td><%= regionNCRaldin.getString("name") %></td>
			    		<td><%= aldintotal %></td>
			    	</tr>
			    <%
			}
			regionNCRaldin.close();	%>
			
			<%
			ResultSet totaldrilon = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and region='NCR';");
			String drilontotal = totaldrilon.getString("TOTALVOTES");
			totaldrilon.close();
			
			ResultSet regionNCRdrilon = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
			while (regionNCRdrilon.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdrilon.getString("candidacy") %></td>
			    		<td><%= regionNCRdrilon.getString("name") %></td>
			    		<td><%= drilontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdrilon.close();	%>
			
			<%
			ResultSet totalgadon = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and region='NCR';");
			String gadontotal = totalgadon.getString("TOTALVOTES");
			totalgadon.close();
			
			ResultSet regionNCRgadon = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
			while (regionNCRgadon.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRgadon.getString("candidacy") %></td>
			    		<td><%= regionNCRgadon.getString("name") %></td>
			    		<td><%= gadontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRgadon.close();	%>
			
			<%
			ResultSet totaldick = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and region='NCR';");
			String dicktotal = totaldick.getString("TOTALVOTES");
			totaldick.close();
			
			ResultSet regionNCRdick = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
			while (regionNCRdick.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdick.getString("candidacy") %></td>
			    		<td><%= regionNCRdick.getString("name") %></td>
			    		<td><%= dicktotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdick.close();	%>
			
			<%
			ResultSet totalkabalo = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and region='NCR';");
			String kabalototal = totalkabalo.getString("TOTALVOTES");
			totalkabalo.close();
			
			ResultSet regionNCRkabalo = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
			while (regionNCRkabalo.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkabalo.getString("candidacy") %></td>
			    		<td><%= regionNCRkabalo.getString("name") %></td>
			    		<td><%= kabalototal %></td>
			    	</tr>
			    <%
			}
			regionNCRkabalo.close();	%>
			
			<%
			ResultSet totalisko = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and region='NCR';");
			String iskototal = totalisko.getString("TOTALVOTES");
			totalisko.close();
			
			ResultSet regionNCRisko = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
			while (regionNCRisko.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRisko.getString("candidacy") %></td>
			    		<td><%= regionNCRisko.getString("name") %></td>
			    		<td><%= iskototal %></td>
			    	</tr>
			    <%
			}
			regionNCRisko.close();	%>
			
			<%
			ResultSet totalbaligod = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and region='NCR';");
			String baligodtotal = totalbaligod.getString("TOTALVOTES");
			totalbaligod.close();
			
			ResultSet regionNCRbaligod = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
			while (regionNCRbaligod.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbaligod.getString("candidacy") %></td>
			    		<td><%= regionNCRbaligod.getString("name") %></td>
			    		<td><%= baligodtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRbaligod.close();	%>
			
			<%
			ResultSet totalcam = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and region='NCR';");
			String camtotal = totalcam.getString("TOTALVOTES");
			totalcam.close();
			
			ResultSet regionNCRcam = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
			while (regionNCRcam.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRcam.getString("candidacy") %></td>
			    		<td><%= regionNCRcam.getString("name") %></td>
			    		<td><%= camtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRcam.close();	%>
			
			<%
			ResultSet totalnel = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and region='NCR';");
			String neltotal = totalnel.getString("TOTALVOTES");
			totalnel.close();
			
			ResultSet regionNCRnel = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
			while (regionNCRnel.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRnel.getString("candidacy") %></td>
			    		<td><%= regionNCRnel.getString("name") %></td>
			    		<td><%= neltotal %></td>
			    	</tr>
			    <%
			}
			regionNCRnel.close();	%>
			
			<%
			ResultSet totallorna = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and region='NCR';");
			String lornatotal = totallorna.getString("TOTALVOTES");
			totallorna.close();
			
			ResultSet regionNCRlorna= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
			while (regionNCRlorna.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlorna.getString("candidacy") %></td>
			    		<td><%= regionNCRlorna.getString("name") %></td>
			    		<td><%= lornatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRlorna.close();	%>
			
			<%
			ResultSet totalarquiza = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and region='NCR';");
			String arquizatotal = totalarquiza.getString("TOTALVOTES");
			totalarquiza.close();
			
			ResultSet regionNCRarquiza = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
			while (regionNCRarquiza.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRarquiza.getString("candidacy") %></td>
			    		<td><%= regionNCRarquiza.getString("name") %></td>
			    		<td><%= arquizatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRarquiza.close();	%>
			
			<%
			ResultSet totalshariff = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and region='NCR';");
			String sharifftotal = totalshariff.getString("TOTALVOTES");
			totalshariff.close();
			
			ResultSet regionNCRshariff = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
			while (regionNCRshariff.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRshariff.getString("candidacy") %></td>
			    		<td><%= regionNCRshariff.getString("name") %></td>
			    		<td><%= sharifftotal %></td>
			    	</tr>
			    <%
			}
			regionNCRshariff.close();	%>
			
			<%
			ResultSet totalneri = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and region='NCR';");
			String neritotal = totalneri.getString("TOTALVOTES");
			totalneri.close();
			
			ResultSet regionNCRneri = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
			while (regionNCRneri.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRneri.getString("candidacy") %></td>
			    		<td><%= regionNCRneri.getString("name") %></td>
			    		<td><%= neritotal %></td>
			    	</tr>
			    <%
			}
			regionNCRneri.close();	%>
			
			<%
			ResultSet totalleila = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and region='NCR';");
			String leilatotal = totalleila.getString("TOTALVOTES");
			totalleila.close();
			
			ResultSet regionNCRleila = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
			while (regionNCRleila.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRleila.getString("candidacy") %></td>
			    		<td><%= regionNCRleila.getString("name") %></td>
			    		<td><%= leilatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRleila.close();	%>
			
			<%
			ResultSet totaldorona = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and region='NCR';");
			String doronatotal = totaldorona.getString("TOTALVOTES");
			totaldorona.close();
			
			ResultSet regionNCRdorona = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
			while (regionNCRdorona.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdorona.getString("candidacy") %></td>
			    		<td><%= regionNCRdorona.getString("name") %></td>
			    		<td><%= doronatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdorona.close();	%>	
			
			<%
			ResultSet totalrisa = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and region='NCR';");
			String risatotal = totalrisa.getString("TOTALVOTES");
			totalrisa.close();
			
			ResultSet regionNCRrisa = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
			while (regionNCRrisa.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrisa.getString("candidacy") %></td>
			    		<td><%= regionNCRrisa.getString("name") %></td>
			    		<td><%= risatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRrisa.close();	%>
			
    	</tbody>
	</table>
  		<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#taguig">Taguig City results</button>
	  	<div id="taguig" class="collapse">
	  			<div class="page-header">
					<h2>City: Taguig</h2>
				</div>
				<table id="ncr-taguig" class="tablesorter table table-striped">
					<thead>
						<tr>
							<th>Candidacy</th>
							<th>Candidate</th>
							<th>Votes</th>
						</tr>
					</thead>
					<tbody>
						<%
						ResultSet totalduterte1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Taguig' and region='NCR';");
						String dutertetotal1 = totalduterte1.getString("TOTALVOTES");
						totalduterte1.close();
						
						ResultSet regionNCRduterte1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
						while (regionNCRduterte1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRduterte1.getString("candidacy") %></td>
						    		<td><%= regionNCRduterte1.getString("name") %></td>
						    		<td><%= dutertetotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRduterte1.close();	%>
						
						<%
						ResultSet totalbinay1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Taguig' and region='NCR';");
						String binaytotal1 = totalbinay1.getString("TOTALVOTES");
						totalbinay1.close();
						
						ResultSet regionNCRbinay1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
						while (regionNCRbinay1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRbinay1.getString("candidacy") %></td>
						    		<td><%= regionNCRbinay1.getString("name") %></td>
						    		<td><%= binaytotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRbinay1.close();	%>
						
						<%
						ResultSet totalsantiago1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Taguig' and region='NCR';");
						String santiagototal1 = totalsantiago1.getString("TOTALVOTES");
						totalsantiago1.close();
						
						ResultSet regionNCRsantiago1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
						while (regionNCRsantiago1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRsantiago1.getString("candidacy") %></td>
						    		<td><%= regionNCRsantiago1.getString("name") %></td>
						    		<td><%= santiagototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRsantiago1.close();	%>
						
						<%
						ResultSet totalpoe1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Taguig' and region='NCR';");
						String poetotal1 = totalpoe1.getString("TOTALVOTES");
						totalpoe1.close();
						
						ResultSet regionNCRpoe1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
						while (regionNCRpoe1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRpoe1.getString("candidacy") %></td>
						    		<td><%= regionNCRpoe1.getString("name") %></td>
						    		<td><%= poetotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRpoe1.close();	%>
						
						<%
						ResultSet totalroxas1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Taguig' and region='NCR';");
						String roxastotal1 = totalroxas1.getString("TOTALVOTES");
						totalroxas1.close();
						
						ResultSet regionNCRroxas1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
						while (regionNCRroxas1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRroxas1.getString("candidacy") %></td>
						    		<td><%= regionNCRroxas1.getString("name") %></td>
						    		<td><%= roxastotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRroxas1.close();	%>
						
						<%
						ResultSet totalhonasan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Taguig' and region='NCR';");
						String honasantotal1 = totalhonasan1.getString("TOTALVOTES");
						totalhonasan1.close();
						
						ResultSet regionNCRhonasan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
						while (regionNCRhonasan1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRhonasan1.getString("candidacy") %></td>
						    		<td><%= regionNCRhonasan1.getString("name") %></td>
						    		<td><%= honasantotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRhonasan1.close();	%>
						
						<%
						ResultSet totaltrillanes1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Taguig' and region='NCR';");
						String trillanestotal1 = totaltrillanes1.getString("TOTALVOTES");
						totaltrillanes1.close();
						
						ResultSet regionNCRtrillanes1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
						while (regionNCRtrillanes1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRtrillanes1.getString("candidacy") %></td>
						    		<td><%= regionNCRtrillanes1.getString("name") %></td>
						    		<td><%= trillanestotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRtrillanes1.close();	%>
						
						<%
						ResultSet totalescudero1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Taguig' and region='NCR';");
						String escuderototal1 = totalescudero1.getString("TOTALVOTES");
						totalescudero1.close();
						
						ResultSet regionNCRescudero1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
						while (regionNCRescudero1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRescudero1.getString("candidacy") %></td>
						    		<td><%= regionNCRescudero1.getString("name") %></td>
						    		<td><%= escuderototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRescudero1.close();	%>
						
						<%
						ResultSet totalrobredo1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Taguig' and region='NCR';");
						String robredototal1 = totalrobredo1.getString("TOTALVOTES");
						totalrobredo1.close();
						
						ResultSet regionNCRrobredo1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
						while (regionNCRrobredo1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRrobredo1.getString("candidacy") %></td>
						    		<td><%= regionNCRrobredo1.getString("name") %></td>
						    		<td><%= robredototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRrobredo1.close();	%>
						
						<%
						ResultSet totalmarcos1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Taguig' and region='NCR';");
						String marcostotal1 = totalmarcos1.getString("TOTALVOTES");
						totalmarcos1.close();
						
						ResultSet regionNCRmarcos1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
						while (regionNCRmarcos1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRmarcos1.getString("candidacy") %></td>
						    		<td><%= regionNCRmarcos1.getString("name") %></td>
						    		<td><%= marcostotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRmarcos1.close();	%>
						
						<%
						ResultSet totalalan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Taguig' and region='NCR';");
						String alantotal1 = totalalan1.getString("TOTALVOTES");
						totalalan1.close();
						
						ResultSet regionNCRalan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
						while (regionNCRmarcos1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRalan1.getString("candidacy") %></td>
						    		<td><%= regionNCRalan1.getString("name") %></td>
						    		<td><%= alantotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRalan1.close();	%>
						
						<%
						ResultSet totalshariff1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Taguig' and region='NCR';");
						String sharifftotal1 = totalshariff1.getString("TOTALVOTES");
						totalshariff1.close();
						
						ResultSet regionNCRshariff1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
						while (regionNCRshariff1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRshariff1.getString("candidacy") %></td>
						    		<td><%= regionNCRshariff1.getString("name") %></td>
						    		<td><%= sharifftotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRshariff1.close();	%>
						
						<%
						ResultSet totalaldin1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Taguig' and region='NCR';");
						String aldintotal1 = totalaldin1.getString("TOTALVOTES");
						totalaldin1.close();
						
						ResultSet regionNCRaldin1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
						while (regionNCRaldin1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRaldin1.getString("candidacy") %></td>
						    		<td><%= regionNCRaldin1.getString("name") %></td>
						    		<td><%= aldintotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRaldin1.close();	%>
						
						<%
						ResultSet totalalunan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Taguig' and region='NCR';");
						String alunantotal1 = totalalunan1.getString("TOTALVOTES");
						totalalunan1.close();
						
						ResultSet regionNCRalunan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
						while (regionNCRalunan1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRalunan1.getString("candidacy") %></td>
						    		<td><%= regionNCRalunan1.getString("name") %></td>
						    		<td><%= alunantotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRalunan1.close();	%>
						
						<%
						ResultSet totalambolodto1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Taguig' and region='NCR';");
						String ambolodtototal1 = totalambolodto1.getString("TOTALVOTES");
						totalambolodto1.close();
						
						ResultSet regionNCRambolodto1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
						while (regionNCRambolodto1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRambolodto1.getString("candidacy") %></td>
						    		<td><%= regionNCRambolodto1.getString("name") %></td>
						    		<td><%= ambolodtototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRambolodto1.close();	%>
						
						<%
						ResultSet totalarquiza1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Taguig' and region='NCR';");
						String arquizatotal1 = totalarquiza1.getString("TOTALVOTES");
						totalarquiza1.close();
						
						ResultSet regionNCRarquiza1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
						while (regionNCRarquiza1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRarquiza1.getString("candidacy") %></td>
						    		<td><%= regionNCRarquiza1.getString("name") %></td>
						    		<td><%= arquizatotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRarquiza1.close();	%>
						
						<%
						ResultSet totalbaligod1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Taguig' and region='NCR';");
						String baligodtotal1 = totalbaligod1.getString("TOTALVOTES");
						totalbaligod1.close();
						
						ResultSet regionNCRbaligod1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
						while (regionNCRbaligod1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRbaligod1.getString("candidacy") %></td>
						    		<td><%= regionNCRbaligod1.getString("name") %></td>
						    		<td><%= baligodtotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRbaligod1.close();	%>
						
						<%
						ResultSet totalbello1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Taguig' and region='NCR';");
						String bellototal1 = totalbello1.getString("TOTALVOTES");
						totalbello1.close();
						
						ResultSet regionNCRbello1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
						while (regionNCRbello1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRbello1.getString("candidacy") %></td>
						    		<td><%= regionNCRbello1.getString("name") %></td>
						    		<td><%= bellototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRbello1.close();	%>
						
						<%
						ResultSet totalcam1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Taguig' and region='NCR';");
						String camtotal1 = totalcam1.getString("TOTALVOTES");
						totalcam1.close();
						
						ResultSet regionNCRcam1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
						while (regionNCRcam1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRcam1.getString("candidacy") %></td>
						    		<td><%= regionNCRcam1.getString("name") %></td>
						    		<td><%= camtotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRcam1.close();	%>
						
						<%
						ResultSet totalnel1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Taguig' and region='NCR';");
						String neltotal1 = totalnel1.getString("TOTALVOTES");
						totalnel1.close();
						
						ResultSet regionNCRnel1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
						while (regionNCRnel1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRnel1.getString("candidacy") %></td>
						    		<td><%= regionNCRnel1.getString("name") %></td>
						    		<td><%= neltotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRnel1.close();	%>
						
						<%
						ResultSet totalneri1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Taguig' and region='NCR';");
						String neritotal1 = totalneri1.getString("TOTALVOTES");
						totalneri1.close();
						
						ResultSet regionNCRneri1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
						while (regionNCRneri1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRneri1.getString("candidacy") %></td>
						    		<td><%= regionNCRneri1.getString("name") %></td>
						    		<td><%= neritotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRneri1.close();	%>
						
						<%
						ResultSet totalleila1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Taguig' and region='NCR';");
						String leilatotal1 = totalleila1.getString("TOTALVOTES");
						totalleila1.close();
						
						ResultSet regionNCRleila1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
						while (regionNCRleila1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRleila1.getString("candidacy") %></td>
						    		<td><%= regionNCRleila1.getString("name") %></td>
						    		<td><%= leilatotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRleila1.close();	%>
						
						<%
						ResultSet totalisko1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Taguig' and region='NCR';");
						String iskototal1 = totalisko1.getString("TOTALVOTES");
						totalisko1.close();
						
						ResultSet regionNCRisko1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
						while (regionNCRisko1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRisko1.getString("candidacy") %></td>
						    		<td><%= regionNCRisko1.getString("name") %></td>
						    		<td><%= iskototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRisko1.close();	%>
						
						<%
						ResultSet totaldorona1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Taguig' and region='NCR';");
						String doronatotal1 = totaldorona1.getString("TOTALVOTES");
						totaldorona1.close();
						
						ResultSet regionNCRdorona1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
						while (regionNCRdorona1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRdorona1.getString("candidacy") %></td>
						    		<td><%= regionNCRdorona1.getString("name") %></td>
						    		<td><%= doronatotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRdorona1.close();	%>
						
						<%
						ResultSet totaldrilon1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Taguig' and region='NCR';");
						String drilontotal1 = totaldrilon1.getString("TOTALVOTES");
						totaldrilon1.close();
						
						ResultSet regionNCRdrilon1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
						while (regionNCRdorona1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRdrilon1.getString("candidacy") %></td>
						    		<td><%= regionNCRdrilon1.getString("name") %></td>
						    		<td><%= drilontotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRdrilon1.close();	%>
						
						<%
						ResultSet totalgadon1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Taguig' and region='NCR';");
						String gadontotal1 = totalgadon1.getString("TOTALVOTES");
						totalgadon1.close();
						
						ResultSet regionNCRgadon1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
						while (regionNCRgadon1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRgadon1.getString("candidacy") %></td>
						    		<td><%= regionNCRgadon1.getString("name") %></td>
						    		<td><%= gadontotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRgadon1.close();	%>
						
						<%
						ResultSet totalwin1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Taguig' and region='NCR';");
						String wintotal1 = totalwin1.getString("TOTALVOTES");
						totalwin1.close();
						
						ResultSet regionNCRwin1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
						while (regionNCRgadon1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRwin1.getString("candidacy") %></td>
						    		<td><%= regionNCRwin1.getString("name") %></td>
						    		<td><%= wintotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRwin1.close();	%>
						
						<%
						ResultSet totaldick1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Taguig' and region='NCR';");
						String dicktotal1 = totaldick1.getString("TOTALVOTES");
						totaldick1.close();
						
						ResultSet regionNCRdick1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
						while (regionNCRdick1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRdick1.getString("candidacy") %></td>
						    		<td><%= regionNCRdick1.getString("name") %></td>
						    		<td><%= dicktotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRdick1.close();	%>
						
						<%
						ResultSet totalrisa1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Taguig' and region='NCR';");
						String risatotal1 = totalrisa1.getString("TOTALVOTES");
						totalrisa1.close();
						
						ResultSet regionNCRrisa1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
						while (regionNCRrisa1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRrisa1.getString("candidacy") %></td>
						    		<td><%= regionNCRrisa1.getString("name") %></td>
						    		<td><%= risatotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRrisa1.close();	%>
						
						<%
						ResultSet totalkabalo1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Taguig' and region='NCR';");
						String kabalototal1 = totalkabalo1.getString("TOTALVOTES");
						totalkabalo1.close();
						
						ResultSet regionNCRkabalo1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
						while (regionNCRkabalo1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRkabalo1.getString("candidacy") %></td>
						    		<td><%= regionNCRkabalo1.getString("name") %></td>
						    		<td><%= kabalototal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRkabalo1.close();	%>
						
						<%
						ResultSet totalatty1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Taguig' and region='NCR';");
						String attytotal1 = totalatty1.getString("TOTALVOTES");
						totalatty1.close();
						
						ResultSet regionNCRatty1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
						while (regionNCRatty1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRatty1.getString("candidacy") %></td>
						    		<td><%= regionNCRatty1.getString("name") %></td>
						    		<td><%= attytotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRatty1.close();	%>
						
						<%
						ResultSet totalkiram1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Taguig' and region='NCR';");
						String kiramtotal1 = totalkiram1.getString("TOTALVOTES");
						totalkiram1.close();
						
						ResultSet regionNCRkiram1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
						while (regionNCRkiram1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRkiram1.getString("candidacy") %></td>
						    		<td><%= regionNCRkiram1.getString("name") %></td>
						    		<td><%= kiramtotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRkiram1.close();	%>
						
						<%
						ResultSet totallorna1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Taguig' and region='NCR';");
						String lornatotal1 = totallorna1.getString("TOTALVOTES");
						totallorna1.close();
						
						ResultSet regionNCRlorna1= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
						while (regionNCRlorna1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRlorna1.getString("candidacy") %></td>
						    		<td><%= regionNCRlorna1.getString("name") %></td>
						    		<td><%= lornatotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRlorna1.close();	%>
						
						<%
						ResultSet totallacson1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Taguig' and region='NCR';");
						String lacsontotal1 = totallacson1.getString("TOTALVOTES");
						totallacson1.close();
						
						ResultSet regionNCRlacson1= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
						while (regionNCRlacson1.next()) {	    
						    %>
						    	<tr>
						    		<td><%= regionNCRlacson1.getString("candidacy") %></td>
						    		<td><%= regionNCRlacson1.getString("name") %></td>
						    		<td><%= lacsontotal1 %></td>
						    	</tr>
						    <%
						}
						regionNCRlacson1.close();	%>
					</tbody>
				</table>
				
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#taguig-tanyag">Brgy. Tanyag results</button>
			  			<div id="taguig-tanyag" class="collapse">
			  			<div class="page-header">
							<h2>Barangay: Tanyag</h2>
						</div>
						<table id="ncr-taguig-tanyag" class="tablesorter table table-striped">
							<thead>
								<tr>
									<th>Candidacy</th>
									<th>Candidate</th>
									<th>Votes</th>
								</tr>
							</thead>
							<tbody>
									<%
							ResultSet totalduterte4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String dutertetotal4 = totalduterte4.getString("TOTALVOTES");
							totalduterte4.close();
							
							ResultSet regionNCRduterte4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
							while (regionNCRduterte4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRduterte4.getString("candidacy") %></td>
							    		<td><%= regionNCRduterte4.getString("name") %></td>
							    		<td><%= dutertetotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRduterte4.close();	%>
							
							<%
							ResultSet totalbinay4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String binaytotal4 = totalbinay4.getString("TOTALVOTES");
							totalbinay4.close();
							
							ResultSet regionNCRbinay4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
							while (regionNCRbinay4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbinay4.getString("candidacy") %></td>
							    		<td><%= regionNCRbinay4.getString("name") %></td>
							    		<td><%= binaytotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRbinay4.close();	%>
							
							<%
							ResultSet totalsantiago4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String santiagototal4 = totalsantiago4.getString("TOTALVOTES");
							totalsantiago4.close();
							
							ResultSet regionNCRsantiago4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
							while (regionNCRsantiago4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRsantiago4.getString("candidacy") %></td>
							    		<td><%= regionNCRsantiago4.getString("name") %></td>
							    		<td><%= santiagototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRsantiago4.close();	%>
							
							<%
							ResultSet totalpoe4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String poetotal4 = totalpoe4.getString("TOTALVOTES");
							totalpoe4.close();
							
							ResultSet regionNCRpoe4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
							while (regionNCRpoe4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRpoe4.getString("candidacy") %></td>
							    		<td><%= regionNCRpoe4.getString("name") %></td>
							    		<td><%= poetotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRpoe4.close();	%>
							
							<%
							ResultSet totalroxas4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String roxastotal4 = totalroxas4.getString("TOTALVOTES");
							totalroxas4.close();
							
							ResultSet regionNCRroxas4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
							while (regionNCRroxas4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRroxas4.getString("candidacy") %></td>
							    		<td><%= regionNCRroxas4.getString("name") %></td>
							    		<td><%= roxastotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRroxas4.close();	%>
							
							<%
							ResultSet totalhonasan4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String honasantotal4 = totalhonasan4.getString("TOTALVOTES");
							totalhonasan4.close();
							
							ResultSet regionNCRhonasan4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
							while (regionNCRhonasan4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRhonasan4.getString("candidacy") %></td>
							    		<td><%= regionNCRhonasan4.getString("name") %></td>
							    		<td><%= honasantotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRhonasan4.close();	%>
							
							<%
							ResultSet totaltrillanes4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String trillanestotal4 = totaltrillanes4.getString("TOTALVOTES");
							totaltrillanes4.close();
							
							ResultSet regionNCRtrillanes4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
							while (regionNCRtrillanes4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRtrillanes4.getString("candidacy") %></td>
							    		<td><%= regionNCRtrillanes4.getString("name") %></td>
							    		<td><%= trillanestotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRtrillanes4.close();	%>
							
							<%
							ResultSet totalescudero4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String escuderototal4 = totalescudero4.getString("TOTALVOTES");
							totalescudero4.close();
							
							ResultSet regionNCRescudero4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
							while (regionNCRescudero4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRescudero4.getString("candidacy") %></td>
							    		<td><%= regionNCRescudero4.getString("name") %></td>
							    		<td><%= escuderototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRescudero4.close();	%>
							
							<%
							ResultSet totalrobredo4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String robredototal4 = totalrobredo4.getString("TOTALVOTES");
							totalrobredo4.close();
							
							ResultSet regionNCRrobredo4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
							while (regionNCRrobredo4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrobredo4.getString("candidacy") %></td>
							    		<td><%= regionNCRrobredo4.getString("name") %></td>
							    		<td><%= robredototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRrobredo4.close();	%>
							
							<%
							ResultSet totalmarcos4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String marcostotal4 = totalmarcos4.getString("TOTALVOTES");
							totalmarcos4.close();
							
							ResultSet regionNCRmarcos4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
							while (regionNCRmarcos4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRmarcos4.getString("candidacy") %></td>
							    		<td><%= regionNCRmarcos4.getString("name") %></td>
							    		<td><%= marcostotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRmarcos4.close();	%>
							
							<%
							ResultSet totalalan4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String alantotal4 = totalalan4.getString("TOTALVOTES");
							totalalan4.close();
							
							ResultSet regionNCRalan4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
							while (regionNCRmarcos4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalan4.getString("candidacy") %></td>
							    		<td><%= regionNCRalan4.getString("name") %></td>
							    		<td><%= alantotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRalan4.close();	%>
							
							<%
							ResultSet totalshariff4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String sharifftotal4 = totalshariff4.getString("TOTALVOTES");
							totalshariff4.close();
							
							ResultSet regionNCRshariff4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
							while (regionNCRshariff4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRshariff4.getString("candidacy") %></td>
							    		<td><%= regionNCRshariff4.getString("name") %></td>
							    		<td><%= sharifftotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRshariff4.close();	%>
							
							<%
							ResultSet totalaldin4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String aldintotal4 = totalaldin4.getString("TOTALVOTES");
							totalaldin4.close();
							
							ResultSet regionNCRaldin4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
							while (regionNCRaldin4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRaldin4.getString("candidacy") %></td>
							    		<td><%= regionNCRaldin4.getString("name") %></td>
							    		<td><%= aldintotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRaldin4.close();	%>
							
							<%
							ResultSet totalalunan4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String alunantotal4 = totalalunan4.getString("TOTALVOTES");
							totalalunan4.close();
							
							ResultSet regionNCRalunan4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
							while (regionNCRalunan4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalunan4.getString("candidacy") %></td>
							    		<td><%= regionNCRalunan4.getString("name") %></td>
							    		<td><%= alunantotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRalunan4.close();	%>
							
							<%
							ResultSet totalambolodto4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String ambolodtototal4 = totalambolodto4.getString("TOTALVOTES");
							totalambolodto4.close();
							
							ResultSet regionNCRambolodto4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
							while (regionNCRambolodto4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRambolodto4.getString("candidacy") %></td>
							    		<td><%= regionNCRambolodto4.getString("name") %></td>
							    		<td><%= ambolodtototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRambolodto4.close();	%>
							
							<%
							ResultSet totalarquiza4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String arquizatotal4 = totalarquiza4.getString("TOTALVOTES");
							totalarquiza4.close();
							
							ResultSet regionNCRarquiza4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
							while (regionNCRarquiza4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRarquiza4.getString("candidacy") %></td>
							    		<td><%= regionNCRarquiza4.getString("name") %></td>
							    		<td><%= arquizatotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRarquiza4.close();	%>
							
							<%
							ResultSet totalbaligod4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String baligodtotal4 = totalbaligod4.getString("TOTALVOTES");
							totalbaligod4.close();
							
							ResultSet regionNCRbaligod4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
							while (regionNCRbaligod4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbaligod4.getString("candidacy") %></td>
							    		<td><%= regionNCRbaligod4.getString("name") %></td>
							    		<td><%= baligodtotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRbaligod4.close();	%>
							
							<%
							ResultSet totalbello4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String bellototal4 = totalbello4.getString("TOTALVOTES");
							totalbello4.close();
							
							ResultSet regionNCRbello4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
							while (regionNCRbello4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbello4.getString("candidacy") %></td>
							    		<td><%= regionNCRbello4.getString("name") %></td>
							    		<td><%= bellototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRbello4.close();	%>
							
							<%
							ResultSet totalcam4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String camtotal4 = totalcam4.getString("TOTALVOTES");
							totalcam4.close();
							
							ResultSet regionNCRcam4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
							while (regionNCRcam4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRcam4.getString("candidacy") %></td>
							    		<td><%= regionNCRcam4.getString("name") %></td>
							    		<td><%= camtotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRcam4.close();	%>
							
							<%
							ResultSet totalnel4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String neltotal4 = totalnel4.getString("TOTALVOTES");
							totalnel4.close();
							
							ResultSet regionNCRnel4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
							while (regionNCRnel4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRnel4.getString("candidacy") %></td>
							    		<td><%= regionNCRnel4.getString("name") %></td>
							    		<td><%= neltotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRnel4.close();	%>
							
							<%
							ResultSet totalneri4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String neritotal4 = totalneri4.getString("TOTALVOTES");
							totalneri4.close();
							
							ResultSet regionNCRneri4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
							while (regionNCRneri4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRneri4.getString("candidacy") %></td>
							    		<td><%= regionNCRneri4.getString("name") %></td>
							    		<td><%= neritotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRneri4.close();	%>
							
							<%
							ResultSet totalleila4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String leilatotal4 = totalleila4.getString("TOTALVOTES");
							totalleila4.close();
							
							ResultSet regionNCRleila4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
							while (regionNCRleila4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRleila4.getString("candidacy") %></td>
							    		<td><%= regionNCRleila4.getString("name") %></td>
							    		<td><%= leilatotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRleila4.close();	%>
							
							<%
							ResultSet totalisko4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String iskototal4 = totalisko4.getString("TOTALVOTES");
							totalisko4.close();
							
							ResultSet regionNCRisko4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
							while (regionNCRisko4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRisko4.getString("candidacy") %></td>
							    		<td><%= regionNCRisko4.getString("name") %></td>
							    		<td><%= iskototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRisko4.close();	%>
							
							<%
							ResultSet totaldorona4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String doronatotal4 = totaldorona4.getString("TOTALVOTES");
							totaldorona4.close();
							
							ResultSet regionNCRdorona4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
							while (regionNCRdorona4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdorona4.getString("candidacy") %></td>
							    		<td><%= regionNCRdorona4.getString("name") %></td>
							    		<td><%= doronatotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRdorona4.close();	%>
							
							<%
							ResultSet totaldrilon4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String drilontotal4 = totaldrilon4.getString("TOTALVOTES");
							totaldrilon4.close();
							
							ResultSet regionNCRdrilon4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
							while (regionNCRdorona4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdrilon4.getString("candidacy") %></td>
							    		<td><%= regionNCRdrilon4.getString("name") %></td>
							    		<td><%= drilontotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRdrilon4.close();	%>
							
							<%
							ResultSet totalgadon4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String gadontotal4 = totalgadon4.getString("TOTALVOTES");
							totalgadon4.close();
							
							ResultSet regionNCRgadon4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
							while (regionNCRgadon4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRgadon4.getString("candidacy") %></td>
							    		<td><%= regionNCRgadon4.getString("name") %></td>
							    		<td><%= gadontotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRgadon4.close();	%>
							
							<%
							ResultSet totalwin4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String wintotal4 = totalwin4.getString("TOTALVOTES");
							totalwin4.close();
							
							ResultSet regionNCRwin4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
							while (regionNCRgadon4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRwin4.getString("candidacy") %></td>
							    		<td><%= regionNCRwin4.getString("name") %></td>
							    		<td><%= wintotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRwin4.close();	%>
							
							<%
							ResultSet totaldick4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String dicktotal4 = totaldick4.getString("TOTALVOTES");
							totaldick4.close();
							
							ResultSet regionNCRdick4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
							while (regionNCRdick4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdick4.getString("candidacy") %></td>
							    		<td><%= regionNCRdick4.getString("name") %></td>
							    		<td><%= dicktotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRdick4.close();	%>
							
							<%
							ResultSet totalrisa4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String risatotal4 = totalrisa4.getString("TOTALVOTES");
							totalrisa4.close();
							
							ResultSet regionNCRrisa4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
							while (regionNCRrisa4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrisa4.getString("candidacy") %></td>
							    		<td><%= regionNCRrisa4.getString("name") %></td>
							    		<td><%= risatotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRrisa4.close();	%>
							
							<%
							ResultSet totalkabalo4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String kabalototal4 = totalkabalo4.getString("TOTALVOTES");
							totalkabalo4.close();
							
							ResultSet regionNCRkabalo4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
							while (regionNCRkabalo4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkabalo4.getString("candidacy") %></td>
							    		<td><%= regionNCRkabalo4.getString("name") %></td>
							    		<td><%= kabalototal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRkabalo4.close();	%>
							
							<%
							ResultSet totalatty4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String attytotal4 = totalatty4.getString("TOTALVOTES");
							totalatty4.close();
							
							ResultSet regionNCRatty4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
							while (regionNCRatty4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRatty4.getString("candidacy") %></td>
							    		<td><%= regionNCRatty4.getString("name") %></td>
							    		<td><%= attytotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRatty4.close();	%>
							
							<%
							ResultSet totalkiram4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String kiramtotal4 = totalkiram4.getString("TOTALVOTES");
							totalkiram4.close();
							
							ResultSet regionNCRkiram4 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
							while (regionNCRkiram4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkiram4.getString("candidacy") %></td>
							    		<td><%= regionNCRkiram4.getString("name") %></td>
							    		<td><%= kiramtotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRkiram4.close();	%>
							
							<%
							ResultSet totallorna4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String lornatotal4 = totallorna4.getString("TOTALVOTES");
							totallorna4.close();
							
							ResultSet regionNCRlorna4= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
							while (regionNCRlorna4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlorna4.getString("candidacy") %></td>
							    		<td><%= regionNCRlorna4.getString("name") %></td>
							    		<td><%= lornatotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRlorna4.close();	%>
							
							<%
							ResultSet totallacson4 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Taguig' and barangay='Tanyag' and region='NCR';");
							String lacsontotal4 = totallacson4.getString("TOTALVOTES");
							totallacson4.close();
							
							ResultSet regionNCRlacson4= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
							while (regionNCRlacson4.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlacson4.getString("candidacy") %></td>
							    		<td><%= regionNCRlacson4.getString("name") %></td>
							    		<td><%= lacsontotal4 %></td>
							    	</tr>
							    <%
							}
							regionNCRlacson4.close();	%>
							</tbody>
						</table>
						</div>
						
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#taguig-bagumbayan">Brgy. Bagumbayan results</button>
			  			<div id="taguig-bagumbayan" class="collapse">
			  			<div class="page-header">
							<h2>Barangay: Bagumbayan</h2>
						</div>
						<table id="ncr-taguig-bagumbayan" class="tablesorter table table-striped">
							<thead>
								<tr>
									<th>Candidacy</th>
									<th>Candidate</th>
									<th>Votes</th>
								</tr>
							</thead>
							<tbody>
									<%
							ResultSet totalduterte5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String dutertetotal5 = totalduterte5.getString("TOTALVOTES");
							totalduterte5.close();
							
							ResultSet regionNCRduterte5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
							while (regionNCRduterte5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRduterte5.getString("candidacy") %></td>
							    		<td><%= regionNCRduterte5.getString("name") %></td>
							    		<td><%= dutertetotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRduterte5.close();	%>
							
							<%
							ResultSet totalbinay5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String binaytotal5 = totalbinay5.getString("TOTALVOTES");
							totalbinay5.close();
							
							ResultSet regionNCRbinay5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
							while (regionNCRbinay5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbinay5.getString("candidacy") %></td>
							    		<td><%= regionNCRbinay5.getString("name") %></td>
							    		<td><%= binaytotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRbinay5.close();	%>
							
							<%
							ResultSet totalsantiago5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String santiagototal5 = totalsantiago5.getString("TOTALVOTES");
							totalsantiago5.close();
							
							ResultSet regionNCRsantiago5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
							while (regionNCRsantiago5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRsantiago5.getString("candidacy") %></td>
							    		<td><%= regionNCRsantiago5.getString("name") %></td>
							    		<td><%= santiagototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRsantiago5.close();	%>
							
							<%
							ResultSet totalpoe5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String poetotal5 = totalpoe5.getString("TOTALVOTES");
							totalpoe5.close();
							
							ResultSet regionNCRpoe5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
							while (regionNCRpoe5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRpoe5.getString("candidacy") %></td>
							    		<td><%= regionNCRpoe5.getString("name") %></td>
							    		<td><%= poetotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRpoe5.close();	%>
							
							<%
							ResultSet totalroxas5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String roxastotal5 = totalroxas5.getString("TOTALVOTES");
							totalroxas5.close();
							
							ResultSet regionNCRroxas5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
							while (regionNCRroxas5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRroxas5.getString("candidacy") %></td>
							    		<td><%= regionNCRroxas5.getString("name") %></td>
							    		<td><%= roxastotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRroxas5.close();	%>
							
							<%
							ResultSet totalhonasan5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String honasantotal5 = totalhonasan5.getString("TOTALVOTES");
							totalhonasan5.close();
							
							ResultSet regionNCRhonasan5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
							while (regionNCRhonasan5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRhonasan5.getString("candidacy") %></td>
							    		<td><%= regionNCRhonasan5.getString("name") %></td>
							    		<td><%= honasantotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRhonasan5.close();	%>
							
							<%
							ResultSet totaltrillanes5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String trillanestotal5 = totaltrillanes5.getString("TOTALVOTES");
							totaltrillanes5.close();
							
							ResultSet regionNCRtrillanes5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
							while (regionNCRtrillanes5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRtrillanes5.getString("candidacy") %></td>
							    		<td><%= regionNCRtrillanes5.getString("name") %></td>
							    		<td><%= trillanestotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRtrillanes5.close();	%>
							
							<%
							ResultSet totalescudero5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String escuderototal5 = totalescudero5.getString("TOTALVOTES");
							totalescudero5.close();
							
							ResultSet regionNCRescudero5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
							while (regionNCRescudero5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRescudero5.getString("candidacy") %></td>
							    		<td><%= regionNCRescudero5.getString("name") %></td>
							    		<td><%= escuderototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRescudero5.close();	%>
							
							<%
							ResultSet totalrobredo5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String robredototal5 = totalrobredo5.getString("TOTALVOTES");
							totalrobredo5.close();
							
							ResultSet regionNCRrobredo5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
							while (regionNCRrobredo5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrobredo5.getString("candidacy") %></td>
							    		<td><%= regionNCRrobredo5.getString("name") %></td>
							    		<td><%= robredototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRrobredo5.close();	%>
							
							<%
							ResultSet totalmarcos5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String marcostotal5 = totalmarcos5.getString("TOTALVOTES");
							totalmarcos5.close();
							
							ResultSet regionNCRmarcos5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
							while (regionNCRmarcos5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRmarcos5.getString("candidacy") %></td>
							    		<td><%= regionNCRmarcos5.getString("name") %></td>
							    		<td><%= marcostotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRmarcos5.close();	%>
							
							<%
							ResultSet totalalan5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String alantotal5 = totalalan5.getString("TOTALVOTES");
							totalalan5.close();
							
							ResultSet regionNCRalan5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
							while (regionNCRmarcos5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalan5.getString("candidacy") %></td>
							    		<td><%= regionNCRalan5.getString("name") %></td>
							    		<td><%= alantotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRalan5.close();	%>
							
							<%
							ResultSet totalshariff5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String sharifftotal5 = totalshariff5.getString("TOTALVOTES");
							totalshariff5.close();
							
							ResultSet regionNCRshariff5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
							while (regionNCRshariff5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRshariff5.getString("candidacy") %></td>
							    		<td><%= regionNCRshariff5.getString("name") %></td>
							    		<td><%= sharifftotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRshariff5.close();	%>
							
							<%
							ResultSet totalaldin5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String aldintotal5 = totalaldin5.getString("TOTALVOTES");
							totalaldin5.close();
							
							ResultSet regionNCRaldin5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
							while (regionNCRaldin5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRaldin5.getString("candidacy") %></td>
							    		<td><%= regionNCRaldin5.getString("name") %></td>
							    		<td><%= aldintotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRaldin5.close();	%>
							
							<%
							ResultSet totalalunan5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String alunantotal5 = totalalunan5.getString("TOTALVOTES");
							totalalunan5.close();
							
							ResultSet regionNCRalunan5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
							while (regionNCRalunan5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalunan5.getString("candidacy") %></td>
							    		<td><%= regionNCRalunan5.getString("name") %></td>
							    		<td><%= alunantotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRalunan5.close();	%>
							
							<%
							ResultSet totalambolodto5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String ambolodtototal5 = totalambolodto5.getString("TOTALVOTES");
							totalambolodto5.close();
							
							ResultSet regionNCRambolodto5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
							while (regionNCRambolodto5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRambolodto5.getString("candidacy") %></td>
							    		<td><%= regionNCRambolodto5.getString("name") %></td>
							    		<td><%= ambolodtototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRambolodto5.close();	%>
							
							<%
							ResultSet totalarquiza5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String arquizatotal5 = totalarquiza5.getString("TOTALVOTES");
							totalarquiza5.close();
							
							ResultSet regionNCRarquiza5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
							while (regionNCRarquiza5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRarquiza5.getString("candidacy") %></td>
							    		<td><%= regionNCRarquiza5.getString("name") %></td>
							    		<td><%= arquizatotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRarquiza5.close();	%>
							
							<%
							ResultSet totalbaligod5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String baligodtotal5 = totalbaligod5.getString("TOTALVOTES");
							totalbaligod5.close();
							
							ResultSet regionNCRbaligod5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
							while (regionNCRbaligod5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbaligod5.getString("candidacy") %></td>
							    		<td><%= regionNCRbaligod5.getString("name") %></td>
							    		<td><%= baligodtotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRbaligod5.close();	%>
							
							<%
							ResultSet totalbello5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String bellototal5 = totalbello5.getString("TOTALVOTES");
							totalbello5.close();
							
							ResultSet regionNCRbello5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
							while (regionNCRbello5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbello5.getString("candidacy") %></td>
							    		<td><%= regionNCRbello5.getString("name") %></td>
							    		<td><%= bellototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRbello5.close();	%>
							
							<%
							ResultSet totalcam5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String camtotal5 = totalcam5.getString("TOTALVOTES");
							totalcam5.close();
							
							ResultSet regionNCRcam5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
							while (regionNCRcam5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRcam5.getString("candidacy") %></td>
							    		<td><%= regionNCRcam5.getString("name") %></td>
							    		<td><%= camtotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRcam5.close();	%>
							
							<%
							ResultSet totalnel5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String neltotal5 = totalnel5.getString("TOTALVOTES");
							totalnel5.close();
							
							ResultSet regionNCRnel5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
							while (regionNCRnel5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRnel5.getString("candidacy") %></td>
							    		<td><%= regionNCRnel5.getString("name") %></td>
							    		<td><%= neltotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRnel5.close();	%>
							
							<%
							ResultSet totalneri5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String neritotal5 = totalneri5.getString("TOTALVOTES");
							totalneri5.close();
							
							ResultSet regionNCRneri5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
							while (regionNCRneri5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRneri5.getString("candidacy") %></td>
							    		<td><%= regionNCRneri5.getString("name") %></td>
							    		<td><%= neritotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRneri5.close();	%>
							
							<%
							ResultSet totalleila5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String leilatotal5 = totalleila5.getString("TOTALVOTES");
							totalleila5.close();
							
							ResultSet regionNCRleila5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
							while (regionNCRleila5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRleila5.getString("candidacy") %></td>
							    		<td><%= regionNCRleila5.getString("name") %></td>
							    		<td><%= leilatotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRleila5.close();	%>
							
							<%
							ResultSet totalisko5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String iskototal5 = totalisko5.getString("TOTALVOTES");
							totalisko5.close();
							
							ResultSet regionNCRisko5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
							while (regionNCRisko5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRisko5.getString("candidacy") %></td>
							    		<td><%= regionNCRisko5.getString("name") %></td>
							    		<td><%= iskototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRisko5.close();	%>
							
							<%
							ResultSet totaldorona5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String doronatotal5 = totaldorona5.getString("TOTALVOTES");
							totaldorona5.close();
							
							ResultSet regionNCRdorona5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
							while (regionNCRdorona5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdorona5.getString("candidacy") %></td>
							    		<td><%= regionNCRdorona5.getString("name") %></td>
							    		<td><%= doronatotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRdorona5.close();	%>
							
							<%
							ResultSet totaldrilon5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String drilontotal5 = totaldrilon5.getString("TOTALVOTES");
							totaldrilon5.close();
							
							ResultSet regionNCRdrilon5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
							while (regionNCRdorona5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdrilon5.getString("candidacy") %></td>
							    		<td><%= regionNCRdrilon5.getString("name") %></td>
							    		<td><%= drilontotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRdrilon5.close();	%>
							
							<%
							ResultSet totalgadon5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String gadontotal5 = totalgadon5.getString("TOTALVOTES");
							totalgadon5.close();
							
							ResultSet regionNCRgadon5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
							while (regionNCRgadon5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRgadon5.getString("candidacy") %></td>
							    		<td><%= regionNCRgadon5.getString("name") %></td>
							    		<td><%= gadontotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRgadon5.close();	%>
							
							<%
							ResultSet totalwin5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String wintotal5 = totalwin5.getString("TOTALVOTES");
							totalwin5.close();
							
							ResultSet regionNCRwin5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
							while (regionNCRgadon5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRwin5.getString("candidacy") %></td>
							    		<td><%= regionNCRwin5.getString("name") %></td>
							    		<td><%= wintotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRwin5.close();	%>
							
							<%
							ResultSet totaldick5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String dicktotal5 = totaldick5.getString("TOTALVOTES");
							totaldick5.close();
							
							ResultSet regionNCRdick5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
							while (regionNCRdick5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdick5.getString("candidacy") %></td>
							    		<td><%= regionNCRdick5.getString("name") %></td>
							    		<td><%= dicktotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRdick5.close();	%>
							
							<%
							ResultSet totalrisa5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String risatotal5 = totalrisa5.getString("TOTALVOTES");
							totalrisa5.close();
							
							ResultSet regionNCRrisa5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
							while (regionNCRrisa5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrisa5.getString("candidacy") %></td>
							    		<td><%= regionNCRrisa5.getString("name") %></td>
							    		<td><%= risatotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRrisa5.close();	%>
							
							<%
							ResultSet totalkabalo5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String kabalototal5 = totalkabalo5.getString("TOTALVOTES");
							totalkabalo5.close();
							
							ResultSet regionNCRkabalo5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
							while (regionNCRkabalo5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkabalo5.getString("candidacy") %></td>
							    		<td><%= regionNCRkabalo5.getString("name") %></td>
							    		<td><%= kabalototal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRkabalo5.close();	%>
							
							<%
							ResultSet totalatty5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String attytotal5 = totalatty5.getString("TOTALVOTES");
							totalatty5.close();
							
							ResultSet regionNCRatty5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
							while (regionNCRatty5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRatty5.getString("candidacy") %></td>
							    		<td><%= regionNCRatty5.getString("name") %></td>
							    		<td><%= attytotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRatty5.close();	%>
							
							<%
							ResultSet totalkiram5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String kiramtotal5 = totalkiram5.getString("TOTALVOTES");
							totalkiram5.close();
							
							ResultSet regionNCRkiram5 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
							while (regionNCRkiram5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkiram5.getString("candidacy") %></td>
							    		<td><%= regionNCRkiram5.getString("name") %></td>
							    		<td><%= kiramtotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRkiram5.close();	%>
							
							<%
							ResultSet totallorna5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String lornatotal5 = totallorna5.getString("TOTALVOTES");
							totallorna5.close();
							
							ResultSet regionNCRlorna5= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
							while (regionNCRlorna5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlorna5.getString("candidacy") %></td>
							    		<td><%= regionNCRlorna5.getString("name") %></td>
							    		<td><%= lornatotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRlorna5.close();	%>
							
							<%
							ResultSet totallacson5 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Taguig' and barangay='Bagumbayan' and region='NCR';");
							String lacsontotal5 = totallacson5.getString("TOTALVOTES");
							totallacson5.close();
							
							ResultSet regionNCRlacson5= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
							while (regionNCRlacson5.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlacson5.getString("candidacy") %></td>
							    		<td><%= regionNCRlacson5.getString("name") %></td>
							    		<td><%= lacsontotal5 %></td>
							    	</tr>
							    <%
							}
							regionNCRlacson5.close();	%>
							</tbody>
						</table>
						</div>
				</div>
				<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#navotas">Navotas City results</button>
	  			<div id="navotas" class="collapse">
	  			<div class="page-header">
					<h2>City: Navotas</h2>
				</div>
				<table id="ncr-navotas" class="tablesorter table table-striped">
					<thead>
						<tr>
							<th>Candidacy</th>
							<th>Candidate</th>
							<th>Votes</th>
						</tr>
					</thead>
					<tbody>
							<%
							ResultSet totalduterte2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Navotas' and region='NCR';");
							String dutertetotal2 = totalduterte2.getString("TOTALVOTES");
							totalduterte2.close();
							
							ResultSet regionNCRduterte2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
							while (regionNCRduterte2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRduterte2.getString("candidacy") %></td>
							    		<td><%= regionNCRduterte2.getString("name") %></td>
							    		<td><%= dutertetotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRduterte2.close();	%>
							
							<%
							ResultSet totalbinay2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Navotas' and region='NCR';");
							String binaytotal2 = totalbinay2.getString("TOTALVOTES");
							totalbinay2.close();
							
							ResultSet regionNCRbinay2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
							while (regionNCRbinay2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbinay2.getString("candidacy") %></td>
							    		<td><%= regionNCRbinay2.getString("name") %></td>
							    		<td><%= binaytotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRbinay2.close();	%>
							
							<%
							ResultSet totalsantiago2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Navotas' and region='NCR';");
							String santiagototal2 = totalsantiago2.getString("TOTALVOTES");
							totalsantiago2.close();
							
							ResultSet regionNCRsantiago2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
							while (regionNCRsantiago2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRsantiago2.getString("candidacy") %></td>
							    		<td><%= regionNCRsantiago2.getString("name") %></td>
							    		<td><%= santiagototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRsantiago2.close();	%>
							
							<%
							ResultSet totalpoe2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Navotas' and region='NCR';");
							String poetotal2 = totalpoe2.getString("TOTALVOTES");
							totalpoe2.close();
							
							ResultSet regionNCRpoe2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
							while (regionNCRpoe2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRpoe2.getString("candidacy") %></td>
							    		<td><%= regionNCRpoe2.getString("name") %></td>
							    		<td><%= poetotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRpoe2.close();	%>
							
							<%
							ResultSet totalroxas2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Navotas' and region='NCR';");
							String roxastotal2 = totalroxas2.getString("TOTALVOTES");
							totalroxas2.close();
							
							ResultSet regionNCRroxas2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
							while (regionNCRroxas2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRroxas2.getString("candidacy") %></td>
							    		<td><%= regionNCRroxas2.getString("name") %></td>
							    		<td><%= roxastotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRroxas2.close();	%>
							
							<%
							ResultSet totalhonasan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Navotas' and region='NCR';");
							String honasantotal2 = totalhonasan2.getString("TOTALVOTES");
							totalhonasan2.close();
							
							ResultSet regionNCRhonasan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
							while (regionNCRhonasan2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRhonasan2.getString("candidacy") %></td>
							    		<td><%= regionNCRhonasan2.getString("name") %></td>
							    		<td><%= honasantotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRhonasan2.close();	%>
							
							<%
							ResultSet totaltrillanes2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Navotas' and region='NCR';");
							String trillanestotal2 = totaltrillanes2.getString("TOTALVOTES");
							totaltrillanes2.close();
							
							ResultSet regionNCRtrillanes2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
							while (regionNCRtrillanes2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRtrillanes2.getString("candidacy") %></td>
							    		<td><%= regionNCRtrillanes2.getString("name") %></td>
							    		<td><%= trillanestotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRtrillanes2.close();	%>
							
							<%
							ResultSet totalescudero2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Navotas' and region='NCR';");
							String escuderototal2 = totalescudero2.getString("TOTALVOTES");
							totalescudero2.close();
							
							ResultSet regionNCRescudero2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
							while (regionNCRescudero2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRescudero2.getString("candidacy") %></td>
							    		<td><%= regionNCRescudero2.getString("name") %></td>
							    		<td><%= escuderototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRescudero2.close();	%>
							
							<%
							ResultSet totalrobredo2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Navotas' and region='NCR';");
							String robredototal2 = totalrobredo2.getString("TOTALVOTES");
							totalrobredo2.close();
							
							ResultSet regionNCRrobredo2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
							while (regionNCRrobredo2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrobredo2.getString("candidacy") %></td>
							    		<td><%= regionNCRrobredo2.getString("name") %></td>
							    		<td><%= robredototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRrobredo2.close();	%>
							
							<%
							ResultSet totalmarcos2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Navotas' and region='NCR';");
							String marcostotal2 = totalmarcos2.getString("TOTALVOTES");
							totalmarcos2.close();
							
							ResultSet regionNCRmarcos2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
							while (regionNCRmarcos2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRmarcos2.getString("candidacy") %></td>
							    		<td><%= regionNCRmarcos2.getString("name") %></td>
							    		<td><%= marcostotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRmarcos2.close();	%>
							
							<%
							ResultSet totalalan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Navotas' and region='NCR';");
							String alantotal2 = totalalan2.getString("TOTALVOTES");
							totalalan2.close();
							
							ResultSet regionNCRalan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
							while (regionNCRmarcos2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalan2.getString("candidacy") %></td>
							    		<td><%= regionNCRalan2.getString("name") %></td>
							    		<td><%= alantotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRalan2.close();	%>
							
							<%
							ResultSet totalshariff2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Navotas' and region='NCR';");
							String sharifftotal2 = totalshariff2.getString("TOTALVOTES");
							totalshariff2.close();
							
							ResultSet regionNCRshariff2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
							while (regionNCRshariff2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRshariff2.getString("candidacy") %></td>
							    		<td><%= regionNCRshariff2.getString("name") %></td>
							    		<td><%= sharifftotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRshariff2.close();	%>
							
							<%
							ResultSet totalaldin2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Navotas' and region='NCR';");
							String aldintotal2 = totalaldin2.getString("TOTALVOTES");
							totalaldin2.close();
							
							ResultSet regionNCRaldin2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
							while (regionNCRaldin2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRaldin2.getString("candidacy") %></td>
							    		<td><%= regionNCRaldin2.getString("name") %></td>
							    		<td><%= aldintotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRaldin2.close();	%>
							
							<%
							ResultSet totalalunan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Navotas' and region='NCR';");
							String alunantotal2 = totalalunan2.getString("TOTALVOTES");
							totalalunan2.close();
							
							ResultSet regionNCRalunan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
							while (regionNCRalunan2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalunan2.getString("candidacy") %></td>
							    		<td><%= regionNCRalunan2.getString("name") %></td>
							    		<td><%= alunantotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRalunan2.close();	%>
							
							<%
							ResultSet totalambolodto2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Navotas' and region='NCR';");
							String ambolodtototal2 = totalambolodto2.getString("TOTALVOTES");
							totalambolodto2.close();
							
							ResultSet regionNCRambolodto2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
							while (regionNCRambolodto2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRambolodto2.getString("candidacy") %></td>
							    		<td><%= regionNCRambolodto2.getString("name") %></td>
							    		<td><%= ambolodtototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRambolodto2.close();	%>
							
							<%
							ResultSet totalarquiza2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Navotas' and region='NCR';");
							String arquizatotal2 = totalarquiza2.getString("TOTALVOTES");
							totalarquiza2.close();
							
							ResultSet regionNCRarquiza2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
							while (regionNCRarquiza2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRarquiza2.getString("candidacy") %></td>
							    		<td><%= regionNCRarquiza2.getString("name") %></td>
							    		<td><%= arquizatotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRarquiza2.close();	%>
							
							<%
							ResultSet totalbaligod2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Navotas' and region='NCR';");
							String baligodtotal2 = totalbaligod2.getString("TOTALVOTES");
							totalbaligod2.close();
							
							ResultSet regionNCRbaligod2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
							while (regionNCRbaligod2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbaligod2.getString("candidacy") %></td>
							    		<td><%= regionNCRbaligod2.getString("name") %></td>
							    		<td><%= baligodtotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRbaligod2.close();	%>
							
							<%
							ResultSet totalbello2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Navotas' and region='NCR';");
							String bellototal2 = totalbello2.getString("TOTALVOTES");
							totalbello2.close();
							
							ResultSet regionNCRbello2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
							while (regionNCRbello2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbello2.getString("candidacy") %></td>
							    		<td><%= regionNCRbello2.getString("name") %></td>
							    		<td><%= bellototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRbello2.close();	%>
							
							<%
							ResultSet totalcam2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Navotas' and region='NCR';");
							String camtotal2 = totalcam2.getString("TOTALVOTES");
							totalcam2.close();
							
							ResultSet regionNCRcam2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
							while (regionNCRcam2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRcam2.getString("candidacy") %></td>
							    		<td><%= regionNCRcam2.getString("name") %></td>
							    		<td><%= camtotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRcam2.close();	%>
							
							<%
							ResultSet totalnel2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Navotas' and region='NCR';");
							String neltotal2 = totalnel2.getString("TOTALVOTES");
							totalnel2.close();
							
							ResultSet regionNCRnel2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
							while (regionNCRnel2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRnel2.getString("candidacy") %></td>
							    		<td><%= regionNCRnel2.getString("name") %></td>
							    		<td><%= neltotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRnel2.close();	%>
							
							<%
							ResultSet totalneri2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Navotas' and region='NCR';");
							String neritotal2 = totalneri2.getString("TOTALVOTES");
							totalneri2.close();
							
							ResultSet regionNCRneri2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
							while (regionNCRneri2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRneri2.getString("candidacy") %></td>
							    		<td><%= regionNCRneri2.getString("name") %></td>
							    		<td><%= neritotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRneri2.close();	%>
							
							<%
							ResultSet totalleila2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Navotas' and region='NCR';");
							String leilatotal2 = totalleila2.getString("TOTALVOTES");
							totalleila2.close();
							
							ResultSet regionNCRleila2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
							while (regionNCRleila2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRleila2.getString("candidacy") %></td>
							    		<td><%= regionNCRleila2.getString("name") %></td>
							    		<td><%= leilatotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRleila2.close();	%>
							
							<%
							ResultSet totalisko2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Navotas' and region='NCR';");
							String iskototal2 = totalisko2.getString("TOTALVOTES");
							totalisko2.close();
							
							ResultSet regionNCRisko2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
							while (regionNCRisko2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRisko2.getString("candidacy") %></td>
							    		<td><%= regionNCRisko2.getString("name") %></td>
							    		<td><%= iskototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRisko2.close();	%>
							
							<%
							ResultSet totaldorona2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Navotas' and region='NCR';");
							String doronatotal2 = totaldorona2.getString("TOTALVOTES");
							totaldorona2.close();
							
							ResultSet regionNCRdorona2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
							while (regionNCRdorona2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdorona2.getString("candidacy") %></td>
							    		<td><%= regionNCRdorona2.getString("name") %></td>
							    		<td><%= doronatotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRdorona2.close();	%>
							
							<%
							ResultSet totaldrilon2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Navotas' and region='NCR';");
							String drilontotal2 = totaldrilon2.getString("TOTALVOTES");
							totaldrilon2.close();
							
							ResultSet regionNCRdrilon2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
							while (regionNCRdorona2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdrilon2.getString("candidacy") %></td>
							    		<td><%= regionNCRdrilon2.getString("name") %></td>
							    		<td><%= drilontotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRdrilon2.close();	%>
							
							<%
							ResultSet totalgadon2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Navotas' and region='NCR';");
							String gadontotal2 = totalgadon2.getString("TOTALVOTES");
							totalgadon2.close();
							
							ResultSet regionNCRgadon2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
							while (regionNCRgadon2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRgadon2.getString("candidacy") %></td>
							    		<td><%= regionNCRgadon2.getString("name") %></td>
							    		<td><%= gadontotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRgadon2.close();	%>
							
							<%
							ResultSet totalwin2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Navotas' and region='NCR';");
							String wintotal2 = totalwin2.getString("TOTALVOTES");
							totalwin2.close();
							
							ResultSet regionNCRwin2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
							while (regionNCRgadon2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRwin2.getString("candidacy") %></td>
							    		<td><%= regionNCRwin2.getString("name") %></td>
							    		<td><%= wintotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRwin2.close();	%>
							
							<%
							ResultSet totaldick2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Navotas' and region='NCR';");
							String dicktotal2 = totaldick2.getString("TOTALVOTES");
							totaldick2.close();
							
							ResultSet regionNCRdick2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
							while (regionNCRdick2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdick2.getString("candidacy") %></td>
							    		<td><%= regionNCRdick2.getString("name") %></td>
							    		<td><%= dicktotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRdick2.close();	%>
							
							<%
							ResultSet totalrisa2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Navotas' and region='NCR';");
							String risatotal2 = totalrisa2.getString("TOTALVOTES");
							totalrisa2.close();
							
							ResultSet regionNCRrisa2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
							while (regionNCRrisa2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrisa2.getString("candidacy") %></td>
							    		<td><%= regionNCRrisa2.getString("name") %></td>
							    		<td><%= risatotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRrisa2.close();	%>
							
							<%
							ResultSet totalkabalo2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Navotas' and region='NCR';");
							String kabalototal2 = totalkabalo2.getString("TOTALVOTES");
							totalkabalo2.close();
							
							ResultSet regionNCRkabalo2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
							while (regionNCRkabalo2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkabalo2.getString("candidacy") %></td>
							    		<td><%= regionNCRkabalo2.getString("name") %></td>
							    		<td><%= kabalototal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRkabalo2.close();	%>
							
							<%
							ResultSet totalatty2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Navotas' and region='NCR';");
							String attytotal2 = totalatty2.getString("TOTALVOTES");
							totalatty2.close();
							
							ResultSet regionNCRatty2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
							while (regionNCRatty2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRatty2.getString("candidacy") %></td>
							    		<td><%= regionNCRatty2.getString("name") %></td>
							    		<td><%= attytotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRatty2.close();	%>
							
							<%
							ResultSet totalkiram2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Navotas' and region='NCR';");
							String kiramtotal2 = totalkiram2.getString("TOTALVOTES");
							totalkiram2.close();
							
							ResultSet regionNCRkiram2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
							while (regionNCRkiram2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkiram2.getString("candidacy") %></td>
							    		<td><%= regionNCRkiram2.getString("name") %></td>
							    		<td><%= kiramtotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRkiram2.close();	%>
							
							<%
							ResultSet totallorna2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Navotas' and region='NCR';");
							String lornatotal2 = totallorna2.getString("TOTALVOTES");
							totallorna2.close();
							
							ResultSet regionNCRlorna2= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
							while (regionNCRlorna2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlorna2.getString("candidacy") %></td>
							    		<td><%= regionNCRlorna2.getString("name") %></td>
							    		<td><%= lornatotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRlorna2.close();	%>
							
							<%
							ResultSet totallacson2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Navotas' and region='NCR';");
							String lacsontotal2 = totallacson2.getString("TOTALVOTES");
							totallacson2.close();
							
							ResultSet regionNCRlacson2= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
							while (regionNCRlacson2.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlacson2.getString("candidacy") %></td>
							    		<td><%= regionNCRlacson2.getString("name") %></td>
							    		<td><%= lacsontotal2 %></td>
							    	</tr>
							    <%
							}
							regionNCRlacson2.close();	%>
					</tbody>
				</table>
				
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#navotas-sipac">Brgy. Sipac-Almacen results</button>
			  			<div id="navotas-sipac" class="collapse">
			  			<div class="page-header">
							<h2>Barangay: Sipac</h2>
						</div>
						<table id="ncr-navotas-sipac" class="tablesorter table table-striped">
							<thead>
								<tr>
									<th>Candidacy</th>
									<th>Candidate</th>
									<th>Votes</th>
								</tr>
							</thead>
							<tbody>
									<%
							ResultSet totalduterte3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String dutertetotal3 = totalduterte3.getString("TOTALVOTES");
							totalduterte3.close();
							
							ResultSet regionNCRduterte3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
							while (regionNCRduterte3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRduterte3.getString("candidacy") %></td>
							    		<td><%= regionNCRduterte3.getString("name") %></td>
							    		<td><%= dutertetotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRduterte3.close();	%>
							
							<%
							ResultSet totalbinay3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String binaytotal3 = totalbinay3.getString("TOTALVOTES");
							totalbinay3.close();
							
							ResultSet regionNCRbinay3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
							while (regionNCRbinay3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbinay3.getString("candidacy") %></td>
							    		<td><%= regionNCRbinay3.getString("name") %></td>
							    		<td><%= binaytotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbinay3.close();	%>
							
							<%
							ResultSet totalsantiago3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String santiagototal3 = totalsantiago3.getString("TOTALVOTES");
							totalsantiago3.close();
							
							ResultSet regionNCRsantiago3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
							while (regionNCRsantiago3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRsantiago3.getString("candidacy") %></td>
							    		<td><%= regionNCRsantiago3.getString("name") %></td>
							    		<td><%= santiagototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRsantiago3.close();	%>
							
							<%
							ResultSet totalpoe3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String poetotal3 = totalpoe3.getString("TOTALVOTES");
							totalpoe3.close();
							
							ResultSet regionNCRpoe3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
							while (regionNCRpoe3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRpoe3.getString("candidacy") %></td>
							    		<td><%= regionNCRpoe3.getString("name") %></td>
							    		<td><%= poetotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRpoe3.close();	%>
							
							<%
							ResultSet totalroxas3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String roxastotal3 = totalroxas3.getString("TOTALVOTES");
							totalroxas3.close();
							
							ResultSet regionNCRroxas3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
							while (regionNCRroxas3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRroxas3.getString("candidacy") %></td>
							    		<td><%= regionNCRroxas3.getString("name") %></td>
							    		<td><%= roxastotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRroxas3.close();	%>
							
							<%
							ResultSet totalhonasan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String honasantotal3 = totalhonasan3.getString("TOTALVOTES");
							totalhonasan3.close();
							
							ResultSet regionNCRhonasan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
							while (regionNCRhonasan3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRhonasan3.getString("candidacy") %></td>
							    		<td><%= regionNCRhonasan3.getString("name") %></td>
							    		<td><%= honasantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRhonasan3.close();	%>
							
							<%
							ResultSet totaltrillanes3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String trillanestotal3 = totaltrillanes3.getString("TOTALVOTES");
							totaltrillanes3.close();
							
							ResultSet regionNCRtrillanes3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
							while (regionNCRtrillanes3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRtrillanes3.getString("candidacy") %></td>
							    		<td><%= regionNCRtrillanes3.getString("name") %></td>
							    		<td><%= trillanestotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRtrillanes3.close();	%>
							
							<%
							ResultSet totalescudero3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String escuderototal3 = totalescudero3.getString("TOTALVOTES");
							totalescudero3.close();
							
							ResultSet regionNCRescudero3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
							while (regionNCRescudero3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRescudero3.getString("candidacy") %></td>
							    		<td><%= regionNCRescudero3.getString("name") %></td>
							    		<td><%= escuderototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRescudero3.close();	%>
							
							<%
							ResultSet totalrobredo3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String robredototal3 = totalrobredo3.getString("TOTALVOTES");
							totalrobredo3.close();
							
							ResultSet regionNCRrobredo3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
							while (regionNCRrobredo3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrobredo3.getString("candidacy") %></td>
							    		<td><%= regionNCRrobredo3.getString("name") %></td>
							    		<td><%= robredototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRrobredo3.close();	%>
							
							<%
							ResultSet totalmarcos3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String marcostotal3 = totalmarcos3.getString("TOTALVOTES");
							totalmarcos3.close();
							
							ResultSet regionNCRmarcos3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
							while (regionNCRmarcos3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRmarcos3.getString("candidacy") %></td>
							    		<td><%= regionNCRmarcos3.getString("name") %></td>
							    		<td><%= marcostotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRmarcos3.close();	%>
							
							<%
							ResultSet totalalan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String alantotal3 = totalalan3.getString("TOTALVOTES");
							totalalan3.close();
							
							ResultSet regionNCRalan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
							while (regionNCRmarcos3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalan3.getString("candidacy") %></td>
							    		<td><%= regionNCRalan3.getString("name") %></td>
							    		<td><%= alantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRalan3.close();	%>
							
							<%
							ResultSet totalshariff3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String sharifftotal3 = totalshariff3.getString("TOTALVOTES");
							totalshariff3.close();
							
							ResultSet regionNCRshariff3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
							while (regionNCRshariff3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRshariff3.getString("candidacy") %></td>
							    		<td><%= regionNCRshariff3.getString("name") %></td>
							    		<td><%= sharifftotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRshariff3.close();	%>
							
							<%
							ResultSet totalaldin3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String aldintotal3 = totalaldin3.getString("TOTALVOTES");
							totalaldin3.close();
							
							ResultSet regionNCRaldin3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
							while (regionNCRaldin3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRaldin3.getString("candidacy") %></td>
							    		<td><%= regionNCRaldin3.getString("name") %></td>
							    		<td><%= aldintotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRaldin3.close();	%>
							
							<%
							ResultSet totalalunan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String alunantotal3 = totalalunan3.getString("TOTALVOTES");
							totalalunan3.close();
							
							ResultSet regionNCRalunan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
							while (regionNCRalunan3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalunan3.getString("candidacy") %></td>
							    		<td><%= regionNCRalunan3.getString("name") %></td>
							    		<td><%= alunantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRalunan3.close();	%>
							
							<%
							ResultSet totalambolodto3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String ambolodtototal3 = totalambolodto3.getString("TOTALVOTES");
							totalambolodto3.close();
							
							ResultSet regionNCRambolodto3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
							while (regionNCRambolodto3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRambolodto3.getString("candidacy") %></td>
							    		<td><%= regionNCRambolodto3.getString("name") %></td>
							    		<td><%= ambolodtototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRambolodto3.close();	%>
							
							<%
							ResultSet totalarquiza3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String arquizatotal3 = totalarquiza3.getString("TOTALVOTES");
							totalarquiza3.close();
							
							ResultSet regionNCRarquiza3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
							while (regionNCRarquiza3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRarquiza3.getString("candidacy") %></td>
							    		<td><%= regionNCRarquiza3.getString("name") %></td>
							    		<td><%= arquizatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRarquiza3.close();	%>
							
							<%
							ResultSet totalbaligod3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String baligodtotal3 = totalbaligod3.getString("TOTALVOTES");
							totalbaligod3.close();
							
							ResultSet regionNCRbaligod3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
							while (regionNCRbaligod3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbaligod3.getString("candidacy") %></td>
							    		<td><%= regionNCRbaligod3.getString("name") %></td>
							    		<td><%= baligodtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbaligod3.close();	%>
							
							<%
							ResultSet totalbello3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String bellototal3 = totalbello3.getString("TOTALVOTES");
							totalbello3.close();
							
							ResultSet regionNCRbello3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
							while (regionNCRbello3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbello3.getString("candidacy") %></td>
							    		<td><%= regionNCRbello3.getString("name") %></td>
							    		<td><%= bellototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbello3.close();	%>
							
							<%
							ResultSet totalcam3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String camtotal3 = totalcam3.getString("TOTALVOTES");
							totalcam3.close();
							
							ResultSet regionNCRcam3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
							while (regionNCRcam3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRcam3.getString("candidacy") %></td>
							    		<td><%= regionNCRcam3.getString("name") %></td>
							    		<td><%= camtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRcam3.close();	%>
							
							<%
							ResultSet totalnel3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String neltotal3 = totalnel3.getString("TOTALVOTES");
							totalnel3.close();
							
							ResultSet regionNCRnel3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
							while (regionNCRnel3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRnel3.getString("candidacy") %></td>
							    		<td><%= regionNCRnel3.getString("name") %></td>
							    		<td><%= neltotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRnel3.close();	%>
							
							<%
							ResultSet totalneri3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String neritotal3 = totalneri3.getString("TOTALVOTES");
							totalneri3.close();
							
							ResultSet regionNCRneri3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
							while (regionNCRneri3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRneri3.getString("candidacy") %></td>
							    		<td><%= regionNCRneri3.getString("name") %></td>
							    		<td><%= neritotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRneri3.close();	%>
							
							<%
							ResultSet totalleila3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String leilatotal3 = totalleila3.getString("TOTALVOTES");
							totalleila3.close();
							
							ResultSet regionNCRleila3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
							while (regionNCRleila3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRleila3.getString("candidacy") %></td>
							    		<td><%= regionNCRleila3.getString("name") %></td>
							    		<td><%= leilatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRleila3.close();	%>
							
							<%
							ResultSet totalisko3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String iskototal3 = totalisko3.getString("TOTALVOTES");
							totalisko3.close();
							
							ResultSet regionNCRisko3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
							while (regionNCRisko3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRisko3.getString("candidacy") %></td>
							    		<td><%= regionNCRisko3.getString("name") %></td>
							    		<td><%= iskototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRisko3.close();	%>
							
							<%
							ResultSet totaldorona3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String doronatotal3 = totaldorona3.getString("TOTALVOTES");
							totaldorona3.close();
							
							ResultSet regionNCRdorona3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
							while (regionNCRdorona3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdorona3.getString("candidacy") %></td>
							    		<td><%= regionNCRdorona3.getString("name") %></td>
							    		<td><%= doronatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdorona3.close();	%>
							
							<%
							ResultSet totaldrilon3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String drilontotal3 = totaldrilon3.getString("TOTALVOTES");
							totaldrilon3.close();
							
							ResultSet regionNCRdrilon3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
							while (regionNCRdorona3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdrilon3.getString("candidacy") %></td>
							    		<td><%= regionNCRdrilon3.getString("name") %></td>
							    		<td><%= drilontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdrilon3.close();	%>
							
							<%
							ResultSet totalgadon3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String gadontotal3 = totalgadon3.getString("TOTALVOTES");
							totalgadon3.close();
							
							ResultSet regionNCRgadon3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
							while (regionNCRgadon3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRgadon3.getString("candidacy") %></td>
							    		<td><%= regionNCRgadon3.getString("name") %></td>
							    		<td><%= gadontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRgadon3.close();	%>
							
							<%
							ResultSet totalwin3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String wintotal3 = totalwin3.getString("TOTALVOTES");
							totalwin3.close();
							
							ResultSet regionNCRwin3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
							while (regionNCRgadon3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRwin3.getString("candidacy") %></td>
							    		<td><%= regionNCRwin3.getString("name") %></td>
							    		<td><%= wintotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRwin3.close();	%>
							
							<%
							ResultSet totaldick3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String dicktotal3 = totaldick3.getString("TOTALVOTES");
							totaldick3.close();
							
							ResultSet regionNCRdick3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
							while (regionNCRdick3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdick3.getString("candidacy") %></td>
							    		<td><%= regionNCRdick3.getString("name") %></td>
							    		<td><%= dicktotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdick3.close();	%>
							
							<%
							ResultSet totalrisa3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String risatotal3 = totalrisa3.getString("TOTALVOTES");
							totalrisa3.close();
							
							ResultSet regionNCRrisa3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
							while (regionNCRrisa3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrisa3.getString("candidacy") %></td>
							    		<td><%= regionNCRrisa3.getString("name") %></td>
							    		<td><%= risatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRrisa3.close();	%>
							
							<%
							ResultSet totalkabalo3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String kabalototal3 = totalkabalo3.getString("TOTALVOTES");
							totalkabalo3.close();
							
							ResultSet regionNCRkabalo3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
							while (regionNCRkabalo3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkabalo3.getString("candidacy") %></td>
							    		<td><%= regionNCRkabalo3.getString("name") %></td>
							    		<td><%= kabalototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRkabalo3.close();	%>
							
							<%
							ResultSet totalatty3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String attytotal3 = totalatty3.getString("TOTALVOTES");
							totalatty3.close();
							
							ResultSet regionNCRatty3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
							while (regionNCRatty3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRatty3.getString("candidacy") %></td>
							    		<td><%= regionNCRatty3.getString("name") %></td>
							    		<td><%= attytotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRatty3.close();	%>
							
							<%
							ResultSet totalkiram3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String kiramtotal3 = totalkiram3.getString("TOTALVOTES");
							totalkiram3.close();
							
							ResultSet regionNCRkiram3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
							while (regionNCRkiram3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkiram3.getString("candidacy") %></td>
							    		<td><%= regionNCRkiram3.getString("name") %></td>
							    		<td><%= kiramtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRkiram3.close();	%>
							
							<%
							ResultSet totallorna3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String lornatotal3 = totallorna3.getString("TOTALVOTES");
							totallorna3.close();
							
							ResultSet regionNCRlorna3= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
							while (regionNCRlorna3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlorna3.getString("candidacy") %></td>
							    		<td><%= regionNCRlorna3.getString("name") %></td>
							    		<td><%= lornatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRlorna3.close();	%>
							
							<%
							ResultSet totallacson3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String lacsontotal3 = totallacson3.getString("TOTALVOTES");
							totallacson3.close();
							
							ResultSet regionNCRlacson3= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
							while (regionNCRlacson3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlacson3.getString("candidacy") %></td>
							    		<td><%= regionNCRlacson3.getString("name") %></td>
							    		<td><%= lacsontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRlacson3.close();	%>
							</tbody>
						</table>
						</div>
				</div>
	</div>
</div>
<% stat.close(); %>
<% conn.close(); %>
</body>
<script>
	$(document).ready(function() 
	    { 
	        $("#ncr").tablesorter();
	        $("#ncr-taguig").tablesorter(); 
	        $("#ncr-taguig-tanyag").tablesorter(); 
	        $("#ncr-taguig-bagumbayan").tablesorter(); 
	        $("#ncr-navotas").tablesorter(); 
	        $("#ncr-navotas-sipac").tablesorter(); 
	    } 
	); 
</script>
</html>