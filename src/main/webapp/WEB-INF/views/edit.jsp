<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="tn.spring.app.entity.UserEntity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="margin-top:50px">
		<%
			UserEntity user = (UserEntity)request.getAttribute("user");
			out.print(user.getLogin());
		%>
	
	
	<form action="/user/save" method="POST">
		login: <input type="text" name="login"/><br>
		password: <input type="text" name="password"/><br>
		nom: <input type="text" name="nom"/><br>
		prenom: <input type="text" name="prenom"/><br>
		<input type="submit">
	</form>
	
	
</body>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>