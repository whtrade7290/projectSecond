<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%-- head 컨텐트 영역 --%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/login.css">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<style>

</style>
</head>

<body>
	<div id="content">
		<div id="qnb" class="quick-navigation"></div>
			<div class="section_login">
				<h3 class="tit_login">로그인</h3>
					<div class="write_form">
						<div class="write_vew login_view">
							<form method="post" name="form" id="form" action="/member/login">
								<input type="text" name="memberId" size="20" tabindex="1" placeholder="아이디를입력해주세요" style="width:300px;" required> 
								<input type="password"name="memberPw" size="20" tabindex="2" placeholder="비밀번호를입력해주세요" style="width:300px;" required>
								
						<div class="checkbox_save">
							<label class="label_checkbox"> 
							<input type="checkbox" id="chk_security" name="chk_security" value="true">로그인유지
							</label>
							<div class="login_search">
								<a href="/member/loginupdate" class="link">아이디 찾기</a> 
								<span id="bar">|</span> 
								<a href="/member/Findpass" class="link">비밀번호 찾기</a>
							</div>
						</div>
						
						<button type="submit" class="btn_type1">
							<span class="txt_type">로그인</span>
						</button>
						
					</form>
					
					<a href="/member/joinView" class="btn_type2 btn_member"> 
						<span class="txt_type">회원가입</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<%-- footer 영역 --%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>
</html>