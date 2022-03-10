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
    <link rel="stylesheet" href="/css/board.css">
</head>

<body>
    <table class="table table-hover" id="boardTable">
        <thead>
            <tr>
                <th class="boardTh" colspan="1" style="width: 5%;" >번호</th>
                <th class="boardTh" colspan="2">제목</th>
                <th class="boardTh" colspan="1" style="width: 20%;">작성자</th>
                <th class="boardTh" colspan="1" style="width: 15%;">날짜</th>
                <th class="boardTh" colspan="1" style="width: 15%;">조회수</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${ not empty boardList }">
                    <c:forEach var="board" items="${ boardList }">
                        <tr>
                            <td class="boardTd" colspan="1" style="width: 5%;">${ board.boardNum }</td>
                            <td class="boardTd" colspan="2">
                            	<a href="/community/boardContent?pageNum=${ pageNum }&boardNum=${board.boardNum}">${ board.boardTitle }</a>
                            </td>
                            <td class="boardTd" colspan="1" style="width: 20%;">${ board.boardId }</td>
                            <td class="boardTd" colspan="1" style="width: 15%;">${ board.boardDate }</td>
                            <td class="boardTd" colspan="1" style="width: 15%;">조회수</td>
                        </tr>
                    </c:forEach>
                </c:when>

                <c:otherwise>
                    <td>게시글이 존재하지 않습니다.</td>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    
    <div class="writeDiv">
    	<a href="/community/boardWrite?pageNum=${ pageNum }" class="btnWrite" >글쓰기</a>
    </div>
    
    

    <div id="pageNums">
        <div class="ro">
            <div class="co">
                <ul class="pagination">
                    <c:if test="${ pageDto.count gt 0 }">
                        <c:if test="${ pageDto.startPage gt pageDto.pageBlock }">
                            <li class="page-item"><a class="page-link" href="/community/boardList?pageNum=${ pageDto.startPage - pageDto.pageBlock }">Previous</a></li>
                        </c:if>
                        <c:forEach var="i" begin="${ pageDto.startPage }" end="${ pageDto.endPage }" step="1">
                            <c:choose>
                                <c:when test="${ i eq pageNum }">
                                    <li class="page-item"><a class="page-link" href="/community/boardList?pageNum=${ i }">${ i }</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link" href="/community/boardList?pageNum=${ i }">${ i }</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${ pageDto.startPage lt pageDto.pageBlock }">
                            <li class="page-item"><a class="page-link" href="/community/boardList?pageNum=${ pageDto.startPage + pageDto.pageBlock }">Next</a></li>
                        </c:if>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>

    <%-- footer 영역 --%>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>

</html>