<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of CD</title>
</head>
<body>
<%! String books[]; %>
<%
    books = request.getParameterValues("book");
 	HttpSession ses = request.getSession();
	ses.setAttribute("BOOK1", books);
%>
<form action="Gift.jsp">
	<input type="checkbox" value="MUSIC" name="cd">MUSIC<br><br>
	<input type="checkbox" value="FILM" name="cd">FILM<br><br>
	<input type="checkbox" value="SOFTWARE" name="cd">SOFTWARE<br><br>
	<input type="checkbox" value="GAMES" name="cd">GAMES<br><br>	
	<button type="submit">NEXT</button>
</form>

<%-- <% 
	RequestDispatcher rd = request.getRequestDispatcher("Gift.jsp");
	rd.forward(request, response); 
%>  --%>
</body>
</html>