<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.myapp.dao.entities.*" %>
<%@ page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
</head>
<body>
<%!		Ibm_Employee eList;
		String name;
%>
<%
	eList = (Ibm_Employee)session.getAttribute("empList");
	name = eList.getEmployeeName();
 //	out.println(eList);
%>	
<center>
<h2>Welcome</h2> <%= name %>
<br><br>
<a href="http://localhost:8080/FrontEnd1/Profile.jsp">
	<button type="submit" class="btn btn-primary">Profile</button>
</a>
<br><br>
<a href="http://localhost:8080/FrontEnd1/UserEditForm.jsp">
	<button class="btn btn-primary">Edit</button>
</a>
<br><br>
<a href="http://localhost:8080/FrontEnd1/Logout.jsp">
	<button type="submit" class="btn btn-primary">Logout</button>
</a>
</center>
</body>
</html>