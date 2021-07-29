<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Home</h1><br><br>

Hello world!<br><br>

	<c:choose>
		<c:when test="${ cookie.id.value == null }"><br>
			<a href="/Test/login">login</a>
			<a href="/Test/join">Join</a>
		</c:when>
		<c:otherwise>
			<a href="/Test/logout">logout</a><br><br>
			cookie name is : ${cookie.id.value }
			<br><br>
			
		</c:otherwise>
	</c:choose>




</body>
</html>