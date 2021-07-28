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
Hello world!

	<c:choose>
		<c:when test="${ cookie.id.value == null }">
			<a href="/Test/login">로그인</a>
			<input type="text" value="${cookie.id.value }">
		</c:when>
		<c:otherwise>
			<a>로그아웃</a>
		</c:otherwise>
	</c:choose>




</body>
</html>