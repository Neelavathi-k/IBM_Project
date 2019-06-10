<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource
	 var="dbconnection"
	 user="hr" 
	 password="hr"
	 driver="oracle.jdbc.OracleDriver" 
	 url="jdbc:oracle:thin:@localhost:1521:xe"/>
	connected Successfully!!! 
			
	<sql:update dataSource="${dbconnection}" var="rs">
	 	delete from ibm_employees where employee_id=?
	  	<sql:param value="${param.employee_id}"/>  
	</sql:update>	
	Admin Deleted the data!!! 
	<a href="http://localhost:8080/HRProject/AdminEdit.jsp"> 
 <button type="submit" >Continue</button>
 	</a> 
 </body>
 </html>