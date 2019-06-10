<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Database Details</title>
</head>
<body>
<center>

	<sql:setDataSource var="dbconnection" user="hr" password="hr"
	driver="oracle.jdbc.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe"/>
	
	<sql:query dataSource="${dbconnection}" var="rs">
	SELECT * FROM IBM_EMPLOYEES
	</sql:query>
	
	<table border="1">
	<c:forEach var="row" items="${rs.rows}">
		<tr>
		<td><c:out value="${row.employee_id}"/></td>
		<td><c:out value="${row.name}"/></td>
		<td><c:out value="${row.email_id}"/></td>
		<td><c:out value="${row.phone_number}"/></td>
		<td><c:out value="${row.pass_word}"/></td>
		<td><c:out value="${row.door_no}"/></td>
		<td><c:out value="${row.street}"/></td>
		<td><c:out value="${row.area}"/></td>
		<td><c:out value="${row.city}"/></td>
		<td><c:out value="${row.pincode}"/></td>
		<td><c:out value="${row.hire_date}"/></td>
		<td><c:out value="${row.salary}"></c:out></td>
		<td><c:out value="${row.department_id}"></c:out></td>
		</tr>
	</c:forEach>
	</table>
</center>	
</body>
</html>