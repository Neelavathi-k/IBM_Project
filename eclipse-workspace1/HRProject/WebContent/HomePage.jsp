<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
</head>
<body>
<CENTER>
		<h1>HR MANAGEMENT SYSTEM</h1>		
</CENTER>
<%-- <%! 
	String admin="";
	String user="http://localhost:8080/FrontEnd/UserLogin.jsp";	 
 %> --%>
<c:url var="admin" value="http://localhost:8080/HRProject/NewFile.jsp"></c:url>
<c:url var="user" value="http://localhost:8080/HRProject/Login.jsp"></c:url>
<br>
<a href="${admin}">
	<center><input type="submit" value="ADMIN"></center>
</a>
<br><br>
<a href="${user}">
<center><input type="submit" value="USER"></center>
</a> 


<%-- <button type="button" onclick="user()">USER</button>
<script type="text/javascript">
	function user() {
		<%! String existUser=""; 
		    String newUser="";
		 %>
		 <a href="existUser">
		 <input type="submit" value="USER">
		 </a>
		 <a href="newUser">
		 <input type="submit" value="USER">
		 </a>
		
	} 
</script>--%>
</body>
</html>