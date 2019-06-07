<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<center>
	<form action="LoginProcess.jsp" method="get">
		<pre>
		EMPLOYEE_id : <input type="text" name="id"><br><br>
		PASSWORD : <input type="password" name="password"><br><br>
		<button type="submit">Sign in</button>
		</pre>
	</form>	
	<a href="http://localhost:8080/FrontEnd/RegisterPage.jsp">create a new account</a>
</center>
</body>
</html>