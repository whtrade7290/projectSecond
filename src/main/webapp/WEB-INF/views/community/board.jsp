<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- head 컨텐트 영역 --%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootStrap/bootstrap.css" type="text/css">
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${ not empty boardList }">
					<c:forEach var="board" items="${ boardList }">
						<tr>
							<th>${ board.boardNum }</th>
							<th>${ board.boardId }</th>
							<th>${ board.boardTitle }</th>
							<th>${ board.boardDate }</th>
					    </tr>
					</c:forEach>
				</c:when>
				
				<c:otherwise>
					<td>게시글이 존재하지 않습니다.</td>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>

	<%-- footer 영역 --%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>
</html>