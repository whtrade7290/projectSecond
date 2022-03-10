
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<html>

<head>
    <meta charset="UTF-8">
    <title>글수정</title>
    <link rel="stylesheet" href="/css/boardWrite.css">
</head>

<body>
    <div class="containDiv">
        <div class="head_article">
            <h2>글수정</h2>
        </div>
    </div>
    <div class="writeDiv">
        <form id="frm" method="post" action="/community/boardWrite">
        <input type="hidden" name="pageNum" value="${ pageNum }">
            <table style="border: solid 1px brack;">
                <tbody>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="boardTitle" value="${ boardVo.boardTitle }"></td>
                    </tr>

                    <tr>
                        <th>작성자</th>
                        <td><input type="text" name="boardId" value="${ sessionScope.memberId }" readonly></td>
                    </tr>

                    <tr>
                        <th>내용</th>
                        <td><textarea name="boardContent" id="p_content">${ boardVo.boardContent }</textarea></td>
                    </tr>
                </tbody>
            </table>

            <div class="containDiv">
                <a href="#" id="btnSubmit" onclick="return frm_submit()">글수정</a>
            </div>

        </form>
    </div>
    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        CKEDITOR.replace('p_content', {
            height: 500
        });
        
        function frm_submit(){
        	document.getElementById('frm').submit();
        }
        
        
    </script>


    <%-- footer 영역 --%>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>

</html>