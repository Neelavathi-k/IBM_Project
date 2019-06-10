<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="NewFile.jsp">
<h1></h1>

<center>Emp_id:<input type="number"value=""name="emp_id"></br>
  		Pass_word  :<input type="password"value=""name="pass_word"></br>
		Phone_no:<input type="number" name="phone_number" value=""></br>
		<!-- <fieldset> -->

<pre></>Address</br>
Door No :<input type="text" value="" name="Door_No"required></br>
Street  :<input type="text" value=""name="Street"required></br>
Area    :<input type="text" value=""name="Area"required></br>
City    :<input type="text" value=""name="City"required></br>

</pre>
<!-- </fieldset> -->
<input type="submit" value="Submit" name="submit">
		</center>
</body>
</html>