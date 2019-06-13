<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
 .container {
 text-align:center;
   width: 30%;
  height:50%; 
  margin-top:100px;
  }
  </style>
</head>
<body>
<div class="container">
<center>
<form action="http://localhost:8080/FrontEnd1/Controller" method="get">
<pre>
Admin_id : <input type="text" name="id"><br><br>
PASSWORD : <input type="password" name="password"><br><br>
<input type="hidden" name="type" value="loginbyAdmin">
<button type="submit" class="btn btn-info">Sign in</button>
</pre>
</form>
</center>
</div>
</body>
</html>