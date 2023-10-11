<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>서비스 이용을 위해 정보를 입력해주세요.</h3>
	<form action="#" method="post">
		<div>
			<p>회원아이디</p>

			<input type="text" name="id">

			<p>비밀번호</p>

			<input type="password" name="password">

			<p>비밀번호 확인</p>

			<input type="password" name="passwordCheck">

			<p>성별</p>

			<input type="radio" name="gender" value="male">남성 <input
				type="radio" name="gender" value="female">여성

			<p>생년월일:</p>

			<input type="text" name="birthdate">

			<p>Phone number</p>

			<input type="text" name="phoneNumber">

			<p>Address</p>

			<input type="text" name="address"> <br>
			<input type="submit"value="다음페이지로">

		</div>
	</form>
</body>
</html>