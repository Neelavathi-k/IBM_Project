<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<center>
<form action="RegistrationProcess.jsp">
<h1>Welcome</h1>
<pre>
EmployeeId:<input type="number" name="Employeeid" required><br>
User Name :<input type="text" name="username" required><br>
Email_id  :<input type="text" name="Email_id" required><br>
Phone No  :<input type="text" name="Phone_no" required><br>
Password  :<input type="password" name="password" required><br>

<fieldset >
<legend>Address</legend>
<pre>
Door No :<input type="text" value="" name="Door_No" required><br>
Street  :<input type="text" value=""name="Street" required><br>
Area    :<input type="text" value=""name="Area" required><br>
City    :<input type="text" value=""name="City" required><br>
Pin_code:<input type="number" value=""name="Pin" required><br>
</pre>
</fieldset>
<input type="submit" value="Submit" name="submit"> 
</pre>
</form>
</center>
</body>
</html>

