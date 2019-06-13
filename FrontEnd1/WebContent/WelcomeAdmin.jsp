<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<center>
<h1>Welcome Admin</h1><br/>
<a href="http://localhost:8080/FrontEnd1/ViewPage.jsp">
<button type="submit" class="btn btn-info">View</button>
</a>
<br><br>
<a href="http://localhost:8080/FrontEnd1/AdminEditForm.jsp">
<button class="btn btn-info">Edit</button>
</a>
<br><br>
<a href="http://localhost:8080/FrontEnd1/Controller?type=Delete">
<button class="btn btn-info">Delete</button>
</a>
<br><br>
<a href="http://localhost:8080/FrontEnd1/Logout.jsp">
<button class="btn btn-info">Logout</button>
</a>
</center>
</body>
</html>