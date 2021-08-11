<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1>Write</h1>
<body>
	<form name="frm" method="post" action="/Test/boardWrite">
		<table>
			<tr>
				<td style="font-weight: bold;">Subject</td>
			</tr>
			<tr>
				<td><input type="text" name="subject" style="width: 300px;"></td>
			</tr>
			<tr>
				<td style="font-weight: bold;">Writer</td>
			</tr>
			<tr>
				<td><input type="text" name="writer" value="${id}" style="border: none;" readonly></td>
			</tr>
			<tr>
				<td style="font-weight: bold;">Content</td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="40" name="content"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Send">
				<input type="button" value="Cancel" onclick="location.href='/Test/board'"></td>
			</tr>
		</table>
	</form>
</body>
</html>