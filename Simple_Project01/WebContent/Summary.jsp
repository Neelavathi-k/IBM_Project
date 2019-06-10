<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String[] computers; %>
<%
	computers = request.getParameterValues("computer");
	HttpSession ses = request.getSession();
	ses.setAttribute("COMPUTER1", computers);

//	ServletContext con1 = getServletContext();
	HttpSession ses1 = request.getSession();
%>
<%! String str[]; %>
ITEM YOU SELECTED	<br>
<%
 	str = (String[])ses1.getAttribute("BOOK1");
	for(int i = 0; i < str.length; i++) {
		out.println(str[i]);
	}
%>
<br>
<%
	str = (String[])ses1.getAttribute("CD1");
	for(int i = 0; i < str.length; i++) {
		out.println(str[i]);
	}
%>
<br>
<%
	str = (String[])ses1.getAttribute("GIFT1");
	for(int i = 0; i < str.length; i++) {
		out.println(str[i]);
	}
%>
<br>
<%
	str = (String[])ses1.getAttribute("COMPUTER1");
	for(int i = 0; i < str.length; i++) {
		out.println(str[i]);
	}
	
	ses1.invalidate();
%>
</body>
</html>