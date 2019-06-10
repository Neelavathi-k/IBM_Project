<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Login</title>
</head>
<body>
<form action="UserLogin1.jsp">
<h1>Welcome</h1>
<pre>
EmployeeId:<input type="number"value=""name="employee_id" required> <br/>
User Name :<input type="text"value=""name="name"required> <br/>
Password  :<input type="password"value=""name="pass_word"required> <br/>
Email_id  :<input type="text"value=""name="email_id"required> <br/>
Phone No  :<input type="number"value=""name="phone_no"required> <br/>
<!-- <fieldset> -->

Address <br/>
Door No :<input type="number" value="" name="door_No"required> <br/>
Street  :<input type="text" value=""name="street"required> <br/>
Area    :<input type="text" value=""name="area"required> <br/>
City    :<input type="text" value=""name="city"required> <br/>
Pin_code:<input type="number" value=""name="pin"required> <br/>

<!-- </fieldset> -->
<input type="submit" value="Submit" name="submit">
</pre>
</form>
</body>
</html>