<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
	<link type="text/css" rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<%@ page import="java.io.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.PileBean" %>

<div class="col-md-6" style="position: absolute; top: 15%; left: 25%;">
<TABLE class="table table-striped">
                
<%

int maxprecincts = 9; // let's just say 9 per city

for(int i = 0; i < maxprecincts; i++){
	String a = Integer.toString(i);
	File f = new File("D:/Eclipse/db/textfiles/P0" + a + "C04D02PV01R00.txt");
	
	if(f.exists()){ 
		java.io.BufferedReader bf = new java.io.BufferedReader(new java.io.FileReader(f)); 
		String lineRead = new String (); 
		
		try {
			while ((lineRead = bf.readLine()) != null) 
			{ 
				if(lineRead.equals(""))
				{ 
					continue; 
				} 
				else 
				{ 
					if(lineRead.startsWith("Candidacy")) 
					{ 
						%>
						<TR>
	          	  			<TH style="text-align: left;">START OF CANDIDATE</TH>
	                   		<TD></TD>
	                   	</TR>
						<TR>
	          	  			<TD>Candidacy:</TD>
	                   		<TD> <%= lineRead.substring(11) %> </TD>
	                   	</TR>
						<%
					} 
				else if(lineRead.startsWith("Name")) 
				{ 
						%>	
						<TR>
	          	  			<TD>Name:</TD>
	                   		<TD> <%= lineRead.substring(6) %> </TD>
	                   	</TR>
						<%
				} 
				else if(lineRead.startsWith("Votes")) 
				{ 	
						%>	
						<TR>
	          	  			<TD>Votes:</TD>
	                   		<TD> <%= lineRead.substring(7) %> </TD>
	                   	</TR>
						<%
				}
				else if(lineRead.startsWith("Sender IP"))
				{
					%>	
					<TR>
	      	  			<TD>Sender IP:</TD>
	               		<TD> <%= lineRead.substring(11) %> </TD>
	               	</TR>
					<%
				}
				else if (lineRead.startsWith("Sender MAC Address"))
				{
					%>	
					<TR>
	      	  			<TD>Sender MAC Address:</TD>
	               		<TD> <%= lineRead.substring(20) %> </TD>
	               	</TR>
					<%
				}
				else if (lineRead.startsWith("Sender Latitude"))
				{
					%>	
					<TR>
	      	  			<TD>Sender Latitude:</TD>
	               		<TD> <%= lineRead.substring(17) %> </TD>
	               	</TR>
	               	
					<%
				}
				else if (lineRead.startsWith("Sender Longitude"))
				{
					%>	
					<TR>
	      	  			<TD>Sender Longitude:</TD>
	               		<TD> <%= lineRead.substring(17) %> </TD>
	               	</TR>
	               	
					<%
				}
				else if (lineRead.startsWith("Timestamp"))
				{
					%>
					<TR>
	      	  			<TD>Timestamp:</TD>
	               		<TD> <%= lineRead.substring(11) %> </TD>
	               	</TR>
	               	<TR>
	               		<TD></TD>
	               		<TH style="text-align: right;">END OF CANDIDATE</TH>
	               	</TR>
	               	<TR>
	               		<TD>
	               			<form action="AcceptToDb.jsp" method="post">
	               				<button type="submit" name="filepath" value="D:/Eclipse/db/textfiles/P0<%=a%>C04D02PV01R00.txt" class="btn btn-success">Accept</button>
	               			</form>
	               		</TD>
	               		<TD>
	               			<form action="SendEmail.jsp">
	               				<button type="submit" class="btn btn-danger">Reject</button>
	               			</form>
	               		</TD>
	               	</TR>
					<%
				}
				else if (lineRead.startsWith("Precinct"))
				{
				
						%>	
						<TR>
		      	  			<TD>Precinct:</TD>
		               		<TD> <%= lineRead.substring(10) %> </TD>
		               	</TR>
		               	
						<%
				
				}
				else if (lineRead.startsWith("City"))
				{
					
						%>	
						<TR>
		      	  			<TD>City:</TD>
		               		<TD> <%= lineRead.substring(6) %> </TD>
		               	</TR>
		               	
						<%
					
				}
				else if (lineRead.startsWith("District"))
				{
					%>	
					<TR>
	      	  			<TD>District:</TD>
	               		<TD> <%= lineRead.substring(10) %> </TD>
	               	</TR>
					<%
				}
				else if (lineRead.startsWith("Province"))
				{
					%>	
					<TR>
	      	  			<TD>Province:</TD>
	               		<TD> <%= lineRead.substring(10) %> </TD>
	               	</TR>
					<%
				}
				else if (lineRead.startsWith("Region"))
				{
					%>	
					<TR>
	      	  			<TD>Region:</TD>
	               		<TD> <%= lineRead.substring(8) %> </TD>
	               	</TR>
					<%
				}
				} 		
			} 
			bf.close();
		}
		catch (Exception e) { 
			e.printStackTrace(); 
		}
	}
	else{
		File g = new File("D:/Eclipse/db/textfiles/C0"+ a + "D02PV01R00.txt");
		// "D:/Eclipse/db/textfiles/P0" + a + "C04D02PV01R00.txt"
		if(g.exists()){
			java.io.BufferedReader bf = new java.io.BufferedReader(new java.io.FileReader(g)); 
			String lineRead = new String (); 
			
			try {
				while ((lineRead = bf.readLine()) != null) 
				{ 
					if(lineRead.equals(""))
					{ 
						continue; 
					} 
					else 
					{ 
						if(lineRead.startsWith("Candidacy")) 
						{ 
							%>
							<TR>
		          	  			<TH style="text-align: left;">START OF CANDIDATE</TH>
		                   		<TD></TD>
		                   	</TR>
							<TR>
		          	  			<TD>Candidacy:</TD>
		                   		<TD> <%= lineRead.substring(11) %> </TD>
		                   	</TR>
							<%
						} 
					else if(lineRead.startsWith("Name")) 
					{ 
							%>	
							<TR>
		          	  			<TD>Name:</TD>
		                   		<TD> <%= lineRead.substring(6) %> </TD>
		                   	</TR>
							<%
					} 
					else if(lineRead.startsWith("Votes")) 
					{ 	
							%>	
							<TR>
		          	  			<TD>Votes:</TD>
		                   		<TD> <%= lineRead.substring(7) %> </TD>
		                   	</TR>
							<%
					}
					else if(lineRead.startsWith("Sender IP"))
					{
						%>	
						<TR>
		      	  			<TD>Sender IP:</TD>
		               		<TD> <%= lineRead.substring(11) %> </TD>
		               	</TR>
						<%
					}
					else if (lineRead.startsWith("Sender MAC Address"))
					{
						%>	
						<TR>
		      	  			<TD>Sender MAC Address:</TD>
		               		<TD> <%= lineRead.substring(20) %> </TD>
		               	</TR>
						<%
					}
					else if (lineRead.startsWith("Sender Latitude"))
					{
						%>	
						<TR>
		      	  			<TD>Sender Latitude:</TD>
		               		<TD> <%= lineRead.substring(17) %> </TD>
		               	</TR>
		               	
						<%
					}
					else if (lineRead.startsWith("Sender Longitude"))
					{
						%>	
						<TR>
		      	  			<TD>Sender Longitude:</TD>
		               		<TD> <%= lineRead.substring(17) %> </TD>
		               	</TR>
		               	
						<%
					}
					else if (lineRead.startsWith("Timestamp"))
					{
						%>
						<TR>
		      	  			<TD>Timestamp:</TD>
		               		<TD> <%= lineRead.substring(11) %> </TD>
		               	</TR>
		               	<TR>
		               		<TD></TD>
		               		<TH style="text-align: right;">END OF CANDIDATE</TH>
		               	</TR>
		               	<TR>
		               		<TD>
		               			<form action="AcceptToDb.jsp" method="post">
		               				<button type="submit" name="filepath" value="D:/Eclipse/db/textfiles/C0<%=a%>D02PV01R00.txt" class="btn btn-success">Accept</button>
		               			</form>
		               		</TD>
		               		<TD>
		               			<form action="SendEmail.jsp">
		               				<button type="submit" class="btn btn-danger">Reject</button>
		               			</form>
		               		</TD>
		               	</TR>
						<%
					}
					else if (lineRead.startsWith("Precinct"))
					{
					
							%>	
							<TR>
			      	  			<TD>Precinct:</TD>
			               		<TD> <%= lineRead.substring(10) %> </TD>
			               	</TR>
			               	
							<%
					
					}
					else if (lineRead.startsWith("City"))
					{
						
							%>	
							<TR>
			      	  			<TD>City:</TD>
			               		<TD> <%= lineRead.substring(6) %> </TD>
			               	</TR>
			               	
							<%
						
					}
					else if (lineRead.startsWith("District"))
					{
						%>	
						<TR>
		      	  			<TD>District:</TD>
		               		<TD> <%= lineRead.substring(10) %> </TD>
		               	</TR>
						<%
					}
					else if (lineRead.startsWith("Province"))
					{
						%>	
						<TR>
		      	  			<TD>Province:</TD>
		               		<TD> <%= lineRead.substring(10) %> </TD>
		               	</TR>
						<%
					}
					else if (lineRead.startsWith("Region"))
					{
						%>	
						<TR>
		      	  			<TD>Region:</TD>
		               		<TD> <%= lineRead.substring(8) %> </TD>
		               	</TR>
						<%
					}
					} 		
				} 
				bf.close();
			}
			catch (Exception e) { 
				e.printStackTrace(); 
			}
		}

	}
}

%>
</TABLE>
</div>

	<div style="position: absolute; top: 8.70em; left: 19em;">
			<form action="profile.jsp">
				<button type="submit" class="btn btn-primary">Back to Profile</button>
			</form>
	</div>
	<script src="bootstrap/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/bootstrap.min.js"></script>
    <script src="bootstrap/docs.min.js"></script>
</body>
</html>