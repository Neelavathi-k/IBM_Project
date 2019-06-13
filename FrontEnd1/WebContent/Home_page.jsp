<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
 .carousel-caption {
 text-align:left;
   width: 65%;
  height:65%; 
  }
  </style>
</head>
<body>
<div class="item active">
        <img src="http://www.e-cellbd.com/wp-content/uploads/2016/05/wallpaper.wiki-Desktop-Cool-HD-Background-Photos-PIC-WPD0010435.jpg" style="width:100%;"> <div class="carousel-caption">   
<center><h1>HR MANAGEMENT SYSTEM</h1></center>	


<c:url var="admin" value="http://localhost:8080/FrontEnd1/AdminLoginPage.jsp"></c:url>
<c:url var="user" value="http://localhost:8080/FrontEnd1/UserLogin.jsp"></c:url>
<br>
<a href="${admin}">
<center><input type="submit" value="ADMIN" class="btn btn-success"></center>
</a>
<br>
<br>

<a href="${user}">
<center><input type="submit" value="USER" class="btn btn-success"></center>
</a> 
</div>
 </div>	 
</body>
</html>
