<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body style="margin-top:50px">

	<div class="container">
		<div class="panel panel-default">
		  	<div class="panel-body">
			  	<h2>Login</h2>
				<div class="form-group">
				<form action="/springTest/spring_security_check" method="POST">
					<label for="login">Login</label><input class="form-control" type="text" name="username"/><br>
					<label for="password">Password</label><input class="form-control" type="text" name="password"/><br>
					<input class="btn btn-success" type="submit" value="Login">
				</form>
				</div>
			</div>
		</div>
	</div>
	
</body>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>