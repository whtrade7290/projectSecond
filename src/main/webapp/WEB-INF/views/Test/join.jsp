<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>join</h1>
	<form id="frm" action="/Test/join" method="Post" name="frm" onsubmit="return submitIdChk();">

		<table>
			<tr>
				<td>ID: <input type="text" name="id" v-model="inputIdVal" required>
				<a href="#" v-on:click="idDupChk($event)">중복확인</a><br>
				<input type="text" name="checked_id"  value="n" id="submitIdChk">
				<span id="idChkResult"></span>
				</td>
			</tr>
			<tr>
				<td>PW : <input type="password" v-model="inputPwVal" name="passwd"></td>
			</tr>
			<tr>
				<td><input type="button" value="Join" v-on:click="btnSubmit"></td>
			</tr>
		
		
		</table>
		
		<a href="/">Home</a>
	
	</form>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	
<script>

var app = new Vue({
				el:'#frm',
				data: {
					inputIdVal: '',
					inputPwVal: '',
					submitIdChk: ''
				},// data,
				methods: {
					idDupChk: function(event){
			             event.preventDefault(); // 스크롤바 이동 방지
			             
			             let id = this.inputIdVal;
			             
			             $.ajax({
			            	 url:'/Test/idDupchk',
			            	 data: {id : id},
			            	 success: function (response) {
			            		 
			            		 
			            		 
			            		 if (response.isIdDup){
			            			 $('span#idChkResult').html('X 이미 사용중인 아이디 입니다.').css('color', 'red');
			            		 } else {
			            			 $('span#idChkResult').html('O 사용 가능한 아이디 입니다.').css('color', 'green');
			            			 $('input[name="checked_id"]').val('y');
			            		 }
			            		 
			            	 },
			            	 error: function(){
			            		 alert('id 확인 실패');
			            	 }
			            	 
			             });// ajax
			             
			             
					}, // idDupChk
					
					btnSubmit: function(){
						
						let submitIdChk = $("#submitIdChk").val();
						
						

						if(submitIdChk == 'n'){
							alert('중복확인을 하세요.');
			                $("input[name=id]").focus();
							return;
						}
						
						let obj = {
								
								id: this.inputIdVal,
								passwd: this.inputPwVal
									
						};
						
						let str = JSON.stringify(obj);
						
						alert("str = " + str);
						
						$.ajax({
							
							url:'/Test/join',
							data: str,
							method: 'POST',
							contentType: 'application/json; charset=UTF-8',
							success: function(response){
								console.log(response);
								
								// 로그인 페이지로 넘어가도록
								alert('회원가입 성공');
								location.href='/Test/login';
							},
							
							error: function(){
								alert('회원가입 에러 발생...')
							}
							
						});
						
						
						
					}//btnSubmit
					
				}// methods
	
});

</script>



</body>
</html>