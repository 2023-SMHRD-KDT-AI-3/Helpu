<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	margin: 0;
	padding: 10px;
	box-sizing: border-box;
}

hr {
	padding: 0px;
}

.myPage {
	display: flex;
	justify-content: center;
}

.myPage2 {
	display: flex;
	justify-content: center;
}

.btn {
	display: flex;
	justify-content: center;
}



</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="myPage">
		<h2>My Page</h2>
	</div>

	<div class="myPage2">
		<h6>이곳에서 사용자의 정보를 수정할 수 있습니다.</h6>
	</div>




	<h4>회원 정보 수정</h4>
	<hr>
	<span>
	이곳에서 재설
	</span>
	<form action="ChangeService.do" method="post">
		<table>
			<tr>
				<td>이름</td>
			</tr>
			<tr>
				<!-- 이름 -->
				<td><input type="text" name="name" placeholder="홍길동" autofocus></td>
			</tr>

			<tr>
				<td>성별</td>
			</tr>
			<tr>
				<!-- 성별 -->
				<td><input type="radio" name="gender" value="male">남자 <input
					type="radio" name="gender" value="female">여자</td>
			</tr>

			<tr>
				<td>생년월일</td>
			</tr>
			<tr>
				<!-- 생년월일 -->
				<td><input type="date" name="birth"	autofocus></td>
			</tr>

			<tr>
				<td>아이디</td>
			</tr>
			<tr>
				<!-- 아이디 -->
				<td><input type="text" name="id" placeholder="TEST" autofocus></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td>비밀번호 확인</td>
			</tr>
			<tr>
				<!-- 비밀번호 -->
				<td><input type="text" name="pw" placeholder="password"
					autofocus></td>
				<!-- 비밀번호 확인 -->
				<td><input type="text" name="check" placeholder="password"
					autofocus></td>
			</tr>

			<tr>
				<td>연락처</td>
			</tr>
			<tr>
				<!-- 연락처 -->
				<td><input type="text" name="number" placeholder="Phone number"
					autofocus></td>
			</tr>

			<tr>
				<td>주소</td>
			</tr>
			<tr>
				<!-- 주소 -->
				<td><input type="text" name="address" placeholder="Address"
					autofocus></td>
			</tr>

		</table>



		<h4>알레르기 정보 수정</h4>
		<hr>
		<table>
			<tr>
				<td><input type="checkbox" name="food" value="eggs"></td>
				<td>난류(가금류)</td>

				<td><input type="checkbox" name="food" value="beef"></td>
				<td>소고기</td>

				<td><input type="checkbox" name="food" value="pork"></td>
				<td>돼지고기</td>

				<td><input type="checkbox" name="food" value="chicken"></td>
				<td>닭고기</td>

				<td><input type="checkbox" name="food" value="shrimp"></td>
				<td>새우</td>


			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="crab"></td>
				<td>게</td>

				<td><input type="checkbox" name="food" value="squid"></td>
				<td>오징어</td>

				<td><input type="checkbox" name="food" value="mackerel"></td>
				<td>고등어</td>

				<td><input type="checkbox" name="food" value="clam"></td>
				<td>조개류</td>

				<td><input type="checkbox" name="food" value="milk"></td>
				<td>우유</td>
			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="peanut"></td>
				<td>땅콩</td>

				<td><input type="checkbox" name="food" value="walnut"></td>
				<td>호두</td>

				<td><input type="checkbox" name="food" value="pinenut"></td>
				<td>잣</td>

				<td><input type="checkbox" name="food" value="soybean"></td>
				<td>대두</td>

				<td><input type="checkbox" name="food" value="peach"></td>
				<td>복숭아</td>
			</tr>

			<tr>
				<td><input type="checkbox" name="food" value="tomato"></td>
				<td>토마토</td>

				<td><input type="checkbox" name="food" value="wheat"></td>
				<td>밀</td>

				<td><input type="checkbox" name="food" value="buckwheat"></td>
				<td>메밀</td>

				<td><input type="checkbox" name="food" value="acids"></td>
				<td>이황산류</td>
			</tr>


		</table>

		<div class="btn">
		<table>
			<tr>
				<td>
					<button id="btn1">저장하지 않고 돌아가기</button>
				</td>

				<td>
                    
					<button id="btn2"><input type="submit" value="회원정보 수정 후 저장"></button>
				</td>
			</tr>
		</table>
		</div>

	</form>
</body>
</html>