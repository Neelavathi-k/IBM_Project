<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.sql.*" %>    
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

<sql:setDataSource	
	var = "dbconnection"
	user = "hr"
	password = "hr"
	driver = "oracle.jdbc.OracleDriver"
	url = "jdbc:oracle:thin:@localhost:1521:xe"/>
 <sql:update dataSource="${dbconnection}" var="query">
 	INSERT INTO IBM_EMPLOYEES (employee_id,name,email_id,phone_number,pass_word,door_no,street,area,city,pincode) VALUES (?,?,?,?,?,?,?,?,?,?)
 	<sql:param value="${param.Employeeid}" />
	<sql:param value="${param.username}" />
	<sql:param value="${param.Email_id}" />
	<sql:param value="${param.Phone_no}" />
	<sql:param value="${param.password}" />
	<sql:param value="${param.Door_No}" />
	<sql:param value="${param.Street}" />
	<sql:param value="${param.Area}" />
	<sql:param value="${param.City}" />
	<sql:param value="${param.Pin}" />
 </sql:update>
 <h1>YOUR DATA INSERTED SUCCESSFULLY</h1>
 <a href="http://localhost:8080/FrontEnd/UserLogin.jsp">
 <button type="submit" >Continue</button>
 </a>
	
</body>
</html>