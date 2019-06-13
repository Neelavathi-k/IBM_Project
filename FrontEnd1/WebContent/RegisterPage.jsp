<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Register Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
body{
color: #fff;
background: #63738a;
font-family: 'Roboto', sans-serif;

}
    .form-control{
height: 45px;
box-shadow: none;
color: #969fa4;
}
.form-control:focus{
border-color: #5cb85c;
}
    .form-control, .btn{        
        border-radius: 3px;
    }
.signup-form{
width: 400px;
margin: 0 auto;
padding: 30px 0;
}
.signup-form h2{
color: red;
        margin: 0 0 15px;
position: relative;
text-align: center;
    }
.signup-form h2:before, .signup-form h2:after{
content: "";
height: 2px;
width: 30%;
background: #d4d4d4;
position: absolute;
top: 50%;
z-index: 2;
}	
.signup-form h2:before{
left: 0;
}
.signup-form h2:after{
right: 0;
}
    .signup-form .hint-text{
color: #999;
margin-bottom: 30px;
text-align: center;
}
    .signup-form form{
color: blue;
border-radius: 3px;
    margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
.signup-form .form-group{
margin-bottom: 20px;
}
.signup-form input[type="checkbox"]{
margin-top: 3px;
}
.signup-form .btn{        
        font-size: 16px;
        font-weight: bold;	
min-width: 140px;
        outline: none !important;
    }
.signup-form .row div:first-child{
padding-right: 15px;
}
.signup-form .row div:last-child{
padding-left: 15px;
}    	
    .signup-form a{
color: #fff;
text-decoration: underline;
}
    .signup-form a:hover{
text-decoration: none;
}
.signup-form form a{
color: blue;
text-decoration: none;
}	
.signup-form form a:hover{
text-decoration: underline;
}  
</style>
</head>
<body>
<div class="signup-form">
    <form action="Controller" method="get">
<h2>Welcome</h2>
        <div class="form-group">
<div class="row">
<div class="col-xs-6"><input type="number" class="form-control" name="employee_id" placeholder="Employee-ID" required="required"></div>
                <div class="col-xs-6"><input type="text" class="form-control" name="name" placeholder="Name" required="required"></div>
</div>        	
        </div>
        <div class="form-group">
        <input type="text" class="form-control" name="email" placeholder="Email-ID" required="required">
        </div>
<div class="form-group">
            <input type="text" class="form-control" name="phone no" placeholder="Phone no" required="required">
        </div> 
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div> 
        <h2>Address</h2>
        <div class="form-group">
            <input type="text" class="form-control" name="door no" placeholder="Door no" required="required">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="street" placeholder="Street" required="required">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="area" placeholder="Area" required="required">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="city" placeholder="City" required="required">
        </div>
        <div class="form-group">
            <input type="number" class="form-control" name="pin code" placeholder="Pin code" required="required">
        </div>
        <input type="hidden" name="type" value="register">
<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
        </div>
    </form>
</div>
</body>
</html>
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<center>
<form action="Controller">
<h1>Welcome</h1>
<pre>
EmployeeId:<input type="number" name="Employeeid" required><br>
User Name :<input type="text" name="username" required><br>
Email_id  :<input type="text" name="Email_id" required><br>
Phone No  :<input type="text" name="Phone_no" required><br>
Password  :<input type="password" name="password" required><br>
<input type="hidden" name="type" value="register">
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
 --%>


