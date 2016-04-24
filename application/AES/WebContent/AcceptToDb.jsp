<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="bean.LoginDao" %>


<%
	LoginDao.closeCon();

	String x = request.getParameter("filepath");

	if(x.length() == 44){
		
		java.io.BufferedReader bf = new java.io.BufferedReader(new java.io.FileReader(x)); 
		String lineRead = new String (); 
		InetAddress ip = null;
		StringBuilder sb = new StringBuilder();
		Date myDate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String myDateString = sdf.format(myDate);
			
		try {	
			
			ip = InetAddress.getLocalHost();		
			NetworkInterface network = NetworkInterface.getByInetAddress(ip);
				
			byte[] mac = network.getHardwareAddress();
				
			for (int i = 0; i < mac.length; i++) {
				sb.append(String.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : ""));		
			}
				
		} catch (UnknownHostException e) {	
			e.printStackTrace();	
		} catch (SocketException e){			
			e.printStackTrace();			
		}
		
		String candidacy = null,name = null,vote = null,level = null,precinct = null,barangay = null,city = null, timestamp = null;
		String district = null,province = null,region = null,latitude = null,longitude = null, ipadd = null, mac = null;
		
		Class.forName("org.sqlite.JDBC");
		Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
		PreparedStatement prep = conn.prepareStatement("insert into tapat values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

		try {
			while ((lineRead = bf.readLine()) != null) 
			{		
						if(lineRead.startsWith("Candidacy"))
						{
							candidacy = lineRead.substring(11);
							lineRead = bf.readLine();
						} 
						if(lineRead.startsWith("Name"))
						{
							name = lineRead.substring(6);
							lineRead = bf.readLine();
						} 
						if(lineRead.startsWith("Votes"))
						{
							vote = lineRead.substring(7);
							lineRead = bf.readLine();
						}
						if(lineRead.startsWith("Sender level"))
						{
							level = lineRead.substring(14);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Precinct"))
						{
							precinct = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Barangay"))
						{
							barangay = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("City"))
						{
							city = lineRead.substring(6);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("District"))
						{
							district = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Province"))
						{
							province = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Region"))
						{
							region = lineRead.substring(8);
							lineRead = bf.readLine();
						}
						if(lineRead.startsWith("Sender IP"))
						{
							ipadd = lineRead.substring(11);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender MAC Address"))
						{
							mac = lineRead.substring(20);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender Latitude"))
						{
							latitude = lineRead.substring(17);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender Longitude"))
						{
							longitude =lineRead.substring(18);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Timestamp"))
						{
							timestamp = lineRead.substring(11);
						}
				
				try{
			        prep.setString(1, candidacy); //candidacy
					prep.setString(2, name); //name
					prep.setString(3, vote); //votes
					prep.setString(4, level); //sender level
					prep.setString(5, precinct); //precinct
					prep.setString(6, barangay); //barangay
					prep.setString(7, city); //city
					prep.setString(8, district); //district
					prep.setString(9, province); //province
					prep.setString(10, region); //region
					prep.setString(11, ipadd); //ipadd
					prep.setString(12, mac); //mac
					prep.setString(13, latitude); //latitude
					prep.setString(14, longitude); //longitude
					prep.setString(15, timestamp); //timestamp
					
					prep.addBatch();				
					conn.setAutoCommit(false);
					prep.executeBatch();
			        conn.setAutoCommit(true);
					
			    } catch (SQLException e ) {
			        if (conn!=null) {
			            try {
			                conn.rollback();
			            } catch(SQLException excep) {}
			        }
			    }finally {
			        if (prep!=null) {
			        	prep.close();
			        }
			       if(conn!=null){
			          conn.close();
			        }
			   }
			}
		}
		catch (UnknownHostException e) {					
			e.printStackTrace();				
		}
	}else if (x.length() == 42){
		java.io.BufferedReader bf = new java.io.BufferedReader(new java.io.FileReader(x)); 
		String lineRead = new String (); 
		InetAddress ip = null;
		StringBuilder sb = new StringBuilder();
		Date myDate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String myDateString = sdf.format(myDate);
			
		try {	
			
			ip = InetAddress.getLocalHost();		
			NetworkInterface network = NetworkInterface.getByInetAddress(ip);
				
			byte[] mac = network.getHardwareAddress();
				
			for (int i = 0; i < mac.length; i++) {
				sb.append(String.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : ""));		
			}
				
		} catch (UnknownHostException e) {	
			e.printStackTrace();	
		} catch (SocketException e){			
			e.printStackTrace();			
		}
		
		String candidacy = null,name = null,vote = null,level = null,precinct = null,city = null, timestamp = null;
		String district = null,province = null,region = null,latitude = null,longitude = null, ipadd = null, mac = null;
		
		Class.forName("org.sqlite.JDBC");
		Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
		PreparedStatement prep = conn.prepareStatement("insert into city values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

		try {
			while ((lineRead = bf.readLine()) != null) 
			{		
						if(lineRead.startsWith("Candidacy"))
						{
							candidacy = lineRead.substring(11);
							lineRead = bf.readLine();
						} 
						if(lineRead.startsWith("Name"))
						{
							name = lineRead.substring(6);
							lineRead = bf.readLine();
						} 
						if(lineRead.startsWith("Votes"))
						{
							vote = lineRead.substring(7);
							lineRead = bf.readLine();
						}
						if(lineRead.startsWith("Sender level"))
						{
							level = lineRead.substring(14);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Precinct"))
						{
							precinct = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("City"))
						{
							city = lineRead.substring(6);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("District"))
						{
							district = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Province"))
						{
							province = lineRead.substring(10);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Region"))
						{
							region = lineRead.substring(8);
							lineRead = bf.readLine();
						}
						if(lineRead.startsWith("Sender IP"))
						{
							ipadd = lineRead.substring(11);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender MAC Address"))
						{
							mac = lineRead.substring(20);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender Latitude"))
						{
							latitude = lineRead.substring(17);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Sender Longitude"))
						{
							longitude =lineRead.substring(18);
							lineRead = bf.readLine();
						}
						if (lineRead.startsWith("Timestamp"))
						{
							timestamp = lineRead.substring(11);
						}
				
				try{
			        prep.setString(1, candidacy); //candidacy
					prep.setString(2, name); //name
					prep.setString(3, vote); //votes
					prep.setString(4, level); //sender level
					prep.setString(5, city); //city
					prep.setString(6, district); //district
					prep.setString(7, province); //province
					prep.setString(8, region); //region
					prep.setString(9, ipadd); //ipadd
					prep.setString(10, mac); //mac
					prep.setString(11, latitude); //latitude
					prep.setString(12, longitude); //longitude
					prep.setString(13, timestamp); //timestamp
					
					prep.addBatch();				
					conn.setAutoCommit(false);
					prep.executeBatch();
			        conn.setAutoCommit(true);
					
			    } catch (SQLException e ) {
			        if (conn!=null) {
			            try {
			                conn.rollback();
			            } catch(SQLException excep) {}
			        }
			    }finally {
			        if (prep!=null) {
			        	prep.close();
			        }
			       if(conn!=null){
			          conn.close();
			        }
			   }
			}
		}
		catch (UnknownHostException e) {					
			e.printStackTrace();				
		}
	}

%>
<html>
<head>
<META http-equiv="refresh" content="2;URL=asdsada.jsp">
<title>Accept</title>
</head>
<body>
<p>Saving to database...</p>
<p><%=x %></p>
</body>
</html>