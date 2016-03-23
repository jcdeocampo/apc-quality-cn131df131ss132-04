<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Date" %>
<%-- <%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="com.sun.mail.smtp.*" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%

/** 	public class Distribution {

	    public static void main(String args[]) throws Exception {
	        Properties props = System.getProperties();
	        props.put("mail.smtps.host","smtp.gmail.com");
	        props.put("mail.smtps.auth","true");
	        Session session = Session.getInstance(props, null);
	        Message msg = new MimeMessage(session);
	        msg.setFrom(new InternetAddress("mail@tovare.com"));;
	        msg.setRecipients(Message.RecipientType.TO,
	        InternetAddress.parse("tov.are.jacobsen@iss.no", false));
	        msg.setSubject("Heisann "+System.currentTimeMillis());
	        msg.setText("Med vennlig hilsennTov Are Jacobsen");
	        msg.setHeader("X-Mailer", "Tov Are's program");
	        msg.setSentDate(new Date());
	        SMTPTransport t =
	            (SMTPTransport)session.getTransport("smtps");
	        t.connect("smtp.gmail.com", "admin@tovare.com", "<insert password here>");
	        t.sendMessage(msg, msg.getAllRecipients());
	        System.out.println("Response: " + t.getLastServerResponse());
	        t.close();
	    }
	} */
	
	%>
</body>
</html>