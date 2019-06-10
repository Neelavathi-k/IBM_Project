<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String[] gifts; %>
<%
	gifts = request.getParameterValues("gift");
	HttpSession ses = request.getSession();
	ses.setAttribute("GIFT1", gifts);
%>
<form action="Summary.jsp">
	<input type="checkbox" value="DELL" name="computer">DELL<br><br>
	<input type="checkbox" value="HP" name="computer">HP<br><br>
	<input type="checkbox" value="LENEVO" name="computer">LENEVO<br><br>
	<input type="checkbox" value="ACER" name="computer">ACER<br><br>	
	<!-- <input type="submit" name="NEXT" >NEXT -->
	<button type="submit">NEXT</button>
</form>
</body>
</html>