<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<table border="1">
			<tr>
				<td>회원아이디:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>성별:</td>
				<td><input type="radio" name="gender" value="남성">남성</td>
				<td><input type="radio" name="gender" value="여성">여성</td>
			</tr>
			<tr>
				<td>생년월일:</td>
				<td><input type="date" name="birthdate"></td>
			</tr>

		</table>
	</form>
</body>
</html>