<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.myapp.dao.entities.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
</head>
<body>
<center>
<h1>User Profile</h1>
<%! Ibm_Employee eList; %>
<h2>
<pre>
<br>
<% 
	eList = (Ibm_Employee)session.getAttribute("empList");
	out.println("Employee_Id   : " + eList.getEmployeeId() + "<br>");
	out.println("Employee_Name : " + eList.getEmployeeName() + "<br>");
	out.println("Email_Id      : " + eList.getEmailId() + "<br>");
	out.println("Phone_Number  : " + eList.getPhoneNumber() + "<br>");
	out.println("Door_No       : " + eList.getDoorNo() + "<br>");
	out.println("Street        : " + eList.getStreet() + "<br>");
	out.println("Area          : " + eList.getArea() + "<br>");
	out.println("City          : " + eList.getCity() + "<br>");
	out.println("PinCode       : " + eList.getPincode() + "<br>");
	out.println("Department    : " + eList.getDept() + "<br>");
	out.println("Hire_Date     : " + eList.getHireDate() + "<br>");
	out.println("Salary        : " + eList.getSalary() + "<br>");
%>
</pre>
</h2>
</center>
</body>
</html>