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
	<form id="frm" action="/Test/join" method="Post" name="frm">
	
		ID: <input type="text" name="id" v-model="inputIdVal" required><a href="#" v-on:click="idDupChk($event)">중복확인</a><br>
		<span id="idDubChk">hello</span><br>
		Passwd : <input type="password" name="passwd"><br>
		
		<input type="submit" value="Join">
	
	</form>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	
<script>

var app = new Vue({
				el:'#frm',
				data: {
					inputIdVal: ''
				},// data,
				methods: {
					idDupChk: function(event){
			             event.preventDefault(); // 스크롤바 이동 방지
			             
			             let id = this.inputIdVal;
			             
			             $.ajax({
			            	 url:'/Test/idDupchk',
			            	 data: {id : id},
			            	 success: function (response) {
			            		 
			            		 if (responce.isIdDup){
			            			 $('span#idDupChk').css('color', 'red');
			            		 } else {
			            			 $('span#idDupChk').css('color', 'green');
			            		 }
			            		 
			            	 },
			            	 error: function(){
			            		 alert('id 확인 실패');
			            	 }
			            	 
			             });// ajax
			             
			             
					} // idDupChk
					
				}// methods
	
});

</script>

</body>
</html>