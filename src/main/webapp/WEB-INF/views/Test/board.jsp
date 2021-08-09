<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Board</h1>
	<form>
		<table style="border-style: solid;">
			<tr style="border-style: solid;">
				<th>Num</th>
				<th>Subject</th>
				<th>Writer</th>
				<th>Date</th>
				<th>Hit</th>
			</tr>
			<c:choose>
				<c:when test="${not empty boardList }">
					<c:forEach var="board" items="${ boardList }">
						<tr>
							<td>${ board.num }</td>
							<td>${ board.subject }</td>
							<td>${ board.writer }</td>
							<td><fmt:formatDate value="${ board.date }" pattern="yyyy.MM.dd" /></td>
							<td>${ board.hit }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
                    <td> 검색한 공지가 존재하지 않습니다.</td>
                </c:otherwise>
			</c:choose>
		</table>
		<input type="button" value="write" onclick="location.href='/Test/write'">
	</form>
</body>
</html>