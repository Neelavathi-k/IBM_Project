<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginPage.jsp">
<h1>USER PROFILE</h1>
<% 

Class.forName("oracle.jdbc.OracleDriver"); 

String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
String user = "hr";
String password = "hr";
Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();


int emp_id=0;
String e_name;
String email_id;
String phone_number;
String Pass_word;
String Hire_date;
String Door_no;
String Street;
String Area;
String city;
int salary;
int dept;
ResultSet rs = stmt.executeQuery("SELECT * FROM EMP WHERE EMP_ID="+emp_id+"");


while(rs.next()) {
	emp_id = rs.getInt("emp_id");
	e_name = rs.getString("e_name");
	email_id = rs.getString("email_id");
	phone_number = rs.getString("phone_number");
	Hire_date = rs.getString("Hire_date");
	Pass_word = rs.getString("pass_word");
	Door_no = rs.getString("Door_no");
	Street = rs.getString("Street");
	Area = rs.getString("Area");
	city = rs.getString("city");
	salary  = rs.getInt("salary");
	dept = rs.getInt("dept");
	System.out.println(emp_id+e_name+email_id+phone_number+
			Hire_date+Pass_word+Door_no+Street+Area+city+salary+dept);
	
}
%>
</form>
<a href="http://localhost:8080/project/ExUserEdit.jsp">
<input type="submit" name="edit" value="edit">
</a>




</body>
</html>