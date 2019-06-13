<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Edit Page</title>
</head>
<body>
<center>
<form action="http://localhost:8080/FrontEnd1/Controller">
	<pre>
	Email_id  :<input type="text" name="Email_id" ><br>
	Phone No  :<input type="text" name="Phone_no" ><br>
	Password  :<input type="password" name="password" ><br>
	<input type="hidden" name="type" value="UserEdit">
	<fieldset >
	<legend>Address</legend>
	<pre>
	Door No :<input type="text" value="" name="Door_No" ><br>
	Street  :<input type="text" value=""name="Street" ><br>
	Area    :<input type="text" value=""name="Area" ><br>
	City    :<input type="text" value=""name="City" ><br>
	Pin_code:<input type="number" value=""name="Pin" ><br>
	</pre>
	</fieldset>
	<input type="submit" value="Submit" name="submit"> </pre>
</form>	
</center>
</body>
</html>