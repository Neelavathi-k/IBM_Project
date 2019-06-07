<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String u = request.getParameter("id");
	String p = request.getParameter("password");
%>
<sql:setDataSource
	var = "dbconnection"
	user = "hr"
	password = "hr"
	driver = "oracle.jdbc.OracleDriver"
	url = "jdbc:oracle:thin:@localhost:1521:xe"/>
<sql:query var="rs" dataSource="${dbconnection}">
	SELECT * FROM IBM_EMPLOYEES
</sql:query>
<c:forEach var="row" items="${rs.rows}">
	<c:choose>
		<c:when test="${u == row.employee_id}">
			<sql:query var="ps" dataSource="${dbconnection}">
				SELECT pass_word FROM IBM_EMPLOYEES WHERE employee_id == u;
			</sql:query>
			<c:when test="${p == ps.pass_word}">
				successfully login....
			</c:when>
			<c:otherwise>
				incorrect pass
			</c:otherwise>
		</c:when>
	</c:choose>
</c:forEach>

</body>
</html>