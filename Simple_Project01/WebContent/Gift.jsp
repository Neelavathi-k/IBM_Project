<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List OF Gift</title>
</head>
<body>
<%! String[] cds; %>
<%
	cds = request.getParameterValues("cd");
	HttpSession ses = request.getSession();
	ses.setAttribute("CD1", cds);
 %>
 
<form action="Computer.jsp">
	<input type="checkbox" value="DOLL" name="gift">DOLL<br><br>
	<input type="checkbox" value="DRESS" name="gift">DRESS<br><br>
	<input type="checkbox" value="JEWELS" name="gift">JEWELS<br><br>
	<input type="checkbox" value="CHOCLATES" name="gift">CHOCLATES<br><br>	
	<!-- <input type="submit" name="NEXT" >NEXT -->
	<button type="submit">NEXT</button>
</form></body>
</html>