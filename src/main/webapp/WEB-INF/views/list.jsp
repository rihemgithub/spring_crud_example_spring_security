<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="tn.spring.app.entity.UserEntity"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="margin-top:50px">
	<%
		List<UserEntity> users = (ArrayList<UserEntity>) request.getAttribute("listUser");	
	%>
	<div class="container">
	<div class="panel panel-default">
  	<div class="panel-body">
  	<h2>List Users</h2>
	<table class="table table-striped" >
		<thead>
		<tr>
			<th>nom</th>
			<th>prenom</th>
			<th>login</th>
			<th>Action</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${listUser}" var="u">
			<tr>
				<td><c:out value="${u.nom}" /></td>
				<td><c:out value="${u.prenom}" /></td>
				<td><c:out value="${u.login}" /></td>
				<td><a href="/springTest/user/edit/<c:out value="${u.id}" />"><button class="btn btn-info">edit</button></a>
					<a href="/springTest/user/delete/<c:out value="${u.id}" />"> <button class="btn btn-warning">delete</button></a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="/springTest/user/addForm"><button class="btn btn-success">ajouter</button></a>
	</div>
	</div>
	</div>
</body>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>