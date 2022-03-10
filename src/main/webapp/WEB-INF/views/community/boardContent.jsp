
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<html>

<head>
    <meta charset="UTF-8">
    <title>상세보기</title>
    <link rel="stylesheet" href="/css/boardContent.css">
</head>

<body>
    <div class="containDiv">
        <div class="head_article">
            <h2>상세보기</h2>
        </div>
    </div>
    <div class="contentDiv">
        <form id="frm" method="post" action="">
        <input type="hidden" name="pageNum" value="${ pageNum }">
            <table border="1" style="margin-bottom: 50px;">
                <tbody>
                    <tr>
                        <th>글번호</th>
                        <td>${ boardVo.boardNum }</td>
                        <th>조회수</th>
                        <td>121</td>
                        <th>작성자</th>
                        <td>${ boardVo.boardId }</td>
                    </tr>

                    <tr>
                    	<th colspan="1">제목</th>
                        <td>${ boardVo.boardTitle }</td>
                        <th colspan="1">작성시간</th>
                        <td>${ boardVo.boardDate }</td>
                    </tr>

                    <tr>
                        <th colspan="1">내용</th>
                        <td colspan="5" class="contentTd">test1</td>
                    </tr>
                </tbody>
            </table>
            
             <div class="containDiv">
                <a href="/community/boardList?pageNum=${ pageNum }" class="btnList">목록</a>
                <!-- 추후 글쓴 사람만 수정 가능하도록 -->
                <a href="/community/boardUpdate?pageNum=${ pageNum }&boardNum=${ boardVo.boardNum }" class="btnList">수정</a>
            </div>
    
        </form>
      
    </div>
 
    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">

        function frm_submit(){
        	document.getElementById('frm').submit();
        }
        
        
    </script>


    <%-- footer 영역 --%>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>

</html>