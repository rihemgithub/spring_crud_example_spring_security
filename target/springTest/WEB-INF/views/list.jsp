<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="tn.spring.app.entity.UserEntity"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Set<UserEntity> users = (HashSet<UserEntity>) request.getAttribute("listUser");
		out.print(users);
	%>
	<table border=1>
		<tr>
			<th>nom</th>
			<th>prenom</th>
			<th>login</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listUser}" var="u">
			<tr>
				<td><c:out value="${u.nom}" /></td>
				<td><c:out value="${u.prenom}" /></td>
				<td><c:out value="${u.login}" /></td>
				<td><a href="/user/edit/<c:out value="${u.login}" />"><button>edit</button></a>
					<a href="/user/delete/<c:out value="${u.login}" />"> <button>delete</button></a></td>
			</tr>
		</c:forEach>

	</table>
	<a href="/user/addForm"><button>ajouter</button></a>
</body>
</html>