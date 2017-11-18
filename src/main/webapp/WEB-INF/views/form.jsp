<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="tn.spring.app.entity.UserEntity" %>
   <%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
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
		%>
	<div class="container">
	<div class="panel panel-default">
  	<div class="panel-body">
  	<h2>Add User</h2>
	<div class="form-group">
	<form action="<c:out value="${action}" />" method="POST">
	 <input type="hidden" name="id" value="<c:out value="${user.id}"  />"/><br>
		<label for="login">Login</label><input class="form-control" type="text" name="login" value="<c:out value="${user.login}" />"/><br>
		<label for="password">Password</label><input class="form-control" type="text" name="password" value="<c:out value="${user.password}" />"/><br>
		<label for="nom">Nom</label><input class="form-control" type="text" name="nom" value="<c:out value="${user.nom}" />"/><br>
		<label for="prenom">Prenom</label><input class="form-control" type="text" name="prenom" value="<c:out value="${user.prenom}" />"/><br>
		<input class="btn btn-success" type="submit">
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