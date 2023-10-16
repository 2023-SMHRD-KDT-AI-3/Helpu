<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>
<div class= "wrap">
	<div class="join">
		<img src="imgs/logo.png" alt="로고">
		<h3>서비스 이용을 위해 정보를 입력해주세요.</h3>
		<div class="joinBox">
			<form action="JoinService.do" method="post">
				<div class="userData">
					<p>회원아이디</p>

					<input type="text" name="id" placeholder="사용할 아이디를 입력해주세요.">

					<p>비밀번호</p>

					<input type="password" name="pw" placeholder="사용할 비밀번호를 입력해주세요.">

					<p>
						비밀번호 확인<span class = "passwordStar">*</span>
					</p>

					<input type="password" name="pw" placeholder="사용할 비밀번호를 다시 입력해주세요.">

					<p>이름</p>

					<input type="text" name="mem_name" placeholder="사용자의 이름을 입력해주세요.">

					<p>성별</p>
					<div class="genderBox">
						<input type="radio" class="gender" name="gender" value="m">남성
						<input type="radio" class="gender" name="gender" value="f">여성
					</div>

					<p>생년월일</p>

					<input type="date" name="birthdate">

					<p>전화번호</p>

					<input type="text" name="phone_number" placeholder="연락처를 입력해주세요.">

					<p>주소</p>
					<input type="text" name="m_address" placeholder="주소를 입력해주세요.">

				</div>
				<div class="allergy">
					<h3 class = "allergySubject">가지고 있는 알레르기의 정보를 체크해주세요!</h3>
				</div>
				<div class="checkboxList">
					<div class = "innerCheckbox">
						<input type="checkbox" class="checkbtn" id="cb1" name="food" value="난류가금류"><label for="cb1"></label>난류(가금류)
						<input type="checkbox" class="checkbtn" id="cb2" name="food" value="소고기"><label for="cb2"></label>소고기
						<input type="checkbox" class="checkbtn" id="cb3" name="food" value="돼지고기"><label for="cb3"></label>돼지고기
						<input type="checkbox" class="checkbtn" id="cb4" name="food" value="닭고기"><label for="cb4"></label>닭고기<br>
						<input type="checkbox" class="checkbtn" id="cb5" name="food" value="새우"><label for="cb5"></label>새우
						<input type="checkbox" class="checkbtn" id="cb6" name="food" value="게"><label for="cb6"></label>게
						<input type="checkbox" class="checkbtn" id="cb7" name="food" value="오징어"><label for="cb7"></label>오징어
						<input type="checkbox" class="checkbtn" id="cb8" name="food" value="고등어"><label for="cb8"></label>고등어
						<input type="checkbox" class="checkbtn" id="cb9" name="food" value="조개류"><label for="cb9"></label>조개류<br>
						<input type="checkbox" class="checkbtn" id="cb10" name="food" value="우유"><label for="cb10"></label>우유
						<input type="checkbox" class="checkbtn" id="cb11" name="food" value="땅콩"><label for="cb11"></label>땅콩
						<input type="checkbox" class="checkbtn" id="cb12" name="food" value="호두"><label for="cb12"></label>호두
						<input type="checkbox" class="checkbtn" id="cb13" name="food" value="잣"><label for="cb13"></label>잣
						<input type="checkbox" class="checkbtn" id="cb14" name="food" value="대두"><label for="cb14"></label>대두<br>
						<input type="checkbox" class="checkbtn" id="cb15" name="food" value="복숭아"><label for="cb15"></label>복숭아
						<input type="checkbox" class="checkbtn" id="cb16" name="food" value="토마토"><label for="cb16"></label>토마토
						<input type="checkbox" class="checkbtn" id="cb17" name="food" value="밀"><label for="cb17"></label>밀
						<input type="checkbox" class="checkbtn" id="cb18" name="food" value="메밀"><label for="cb18"></label>메밀
						<input type="checkbox" class="checkbtn" id="cb19" name="food" value="아황산류"><label for="cb19"></label>아황산류
					</div>
				</div>
				<!-- 회원정보 최종 업데이트 -->
				<div class="btn">
					<input type="submit" id= "joinBtn" value="회원가입완료">
				</div>
			</form>
			</div>




		</div>
	</div>
</body>
</html>