<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AdminUpdate.jsp">
	<center>
<h1>The employees data should be inserted</h1>
Employee_Id : <input type="number" name="employee_id"required>
<br/>
<br/>
Hire_Date : <input type="date" name="hire_date"required>
<br/>
<br/>
Salary : <input type="number" name="salary"required>
<br/>
<br/>
Department_ID : <input type="text" name="department_id"required>
<br/>
<br/> 
<input type="submit" value="Submit">
</center>
</form>
</body>
</html>