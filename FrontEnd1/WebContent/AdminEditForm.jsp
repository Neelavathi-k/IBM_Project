<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="Controller">
	Employee_Id : <input type="number" name="id" required> <br><br>
<!-- 	Hire_Date : <input type="date" name="date"><br><br> -->
	Department : <input type="text" name="dept" required><br><br>
	Salary  : <input type="number" name="salary" required><br><br>
	<input type="hidden" name="type" value="InsertbyAdmin">
	<input type="hidden" name="status" value="Active">
	<input type="submit">
</form>
</center>
</body>
</html>