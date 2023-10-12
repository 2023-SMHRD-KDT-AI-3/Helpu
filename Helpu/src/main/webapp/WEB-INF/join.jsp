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
	<form action="JoinService.do" method="post">
		<div>
			<p>회원아이디</p>

			<input type="text" name="id">

			<p>비밀번호</p>

			<input type="password" name="pw">

			<p>비밀번호 확인</p>

			<input type="password" name="pw">
			
			<p>이름</p>
			
			<input type"text" name="mem_name">
			
			<p>성별</p>

			<input type="radio" name="gender" value="m">남성 <input
				type="radio" name="gender" value="f">여성

			<p>생년월일:</p>

			<input type="date" name="birthdate">

			<p>전화번호</p>

			<input type="text" name="phone_number">

			<p>주소</p>
			<input type="text" name="m_address">
			
		</div>
		<div class="HELFU"></div>
		<div class="HELFU2">
			<p>가지고 있는 알레르기의 정보를 체크해주세요!</p>
		</div>
		<table class="table">
			<tr>
				<td><input type="checkbox" name="food" value="난류"></td>
				<td>난류(가금류)</td>

				<td><input type="checkbox" name="food" value="소고기"></td>
				<td>소고기</td>

				<td><input type="checkbox" name="food" value="돼지고기"></td>
				<td>돼지고기</td>

				<td><input type="checkbox" name="food" value="닭고기"></td>
				<td>닭고기</td>

				<td><input type="checkbox" name="food" value="새우"></td>
				<td>새우</td>


			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="게"></td>
				<td>게</td>

				<td><input type="checkbox" name="food" value="오징어"></td>
				<td>오징어</td>

				<td><input type="checkbox" name="food" value="고등어"></td>
				<td>고등어</td>

				<td><input type="checkbox" name="food" value="조개류"></td>
				<td>조개류</td>

				<td><input type="checkbox" name="food" value="우유"></td>
				<td>우유</td>
			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="땅콩"></td>
				<td>땅콩</td>

				<td><input type="checkbox" name="food" value="호두"></td>
				<td>호두</td>

				<td><input type="checkbox" name="food" value="잣"></td>
				<td>잣</td>

				<td><input type="checkbox" name="food" value="대두"></td>
				<td>대두</td>

				<td><input type="checkbox" name="food" value="복숭아"></td>
				<td>복숭아</td>
			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="토마토"></td>
				<td>토마토</td>

				<td><input type="checkbox" name="food" value="밀"></td>
				<td>밀</td>

				<td><input type="checkbox" name="food" value="메밀"></td>
				<td>메밀</td>

				<td><input type="checkbox" name="food" value="이황산류"></td>
				<td>이황산류</td>
			</tr>

		</table>
		<div class="btn">
			<table>
				<tr>
					<td><input type="submit" value="완료"> </script></td>

				</tr>
			</table>
		</div>
	</form>
</body>
</html>