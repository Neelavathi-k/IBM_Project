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
<sql:setDataSource
	var = "dbconnection"
	user = "hr"
	password = "hr"
	driver = "oracle.jdbc.OracleDriver"
	url = "jdbc:oracle:thin:@localhost:1521:xe"/>
<center>
	<form action="UserLogin" method="post">
		<table> </table>
		EMPLOYEE_id : <input type="number" name="id"><br><br>
		PASSWORD : <input type="password" name="password"><br><br>
		<button type="submit">Sign in</button>
	</form>	
</center>
<%
	String u = request.getParameter("id");
	String p = request.getParameter("password");
%>
<sql:query var="rs" dataSource="${dbconnection}">
	SELECT * FROM employees
</sql:query>
<c:forEach var="row" items="${rs.rows}">
	<c:choose>
		<c:when test="{id == row.employee_id}">
			<sql:query var="ps" dataSource="${dbconnection}">
				SELECT Password FROM employees WHERE employee_id=="id"
			</sql:query>
		</c:when>
	</c:choose>
</c:forEach>
</body>
</html>