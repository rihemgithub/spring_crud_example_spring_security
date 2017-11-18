<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="tn.spring.app.entity.UserEntity" %>
   <%@  taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
   <%@ page import="tn.spring.app.entity.UserEntity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
			UserEntity user = (UserEntity)request.getAttribute("user");			
		%>
		
	
	<form action="<c:out value="${action}" />" method="POST">
		login: <input type="text" name="login" value="<c:out value="${user.login}" />"/><br>
		password: <input type="text" name="password" value="<c:out value="${user.password}" />"/><br>
		nom: <input type="text" name="nom" value="<c:out value="${user.nom}" />"/><br>
		prenom: <input type="text" name="prenom" value="<c:out value="${user.prenom}" />"/><br>
		<input type="submit">
	</form>
	
	
</body>
</html>