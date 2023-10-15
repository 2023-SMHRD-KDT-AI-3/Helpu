<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/mypage.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


</head>
<body>

	<form action="#" method="post">

		<!-- 헤더 부분 -->
		<div id="header">
			<div id="innerHeader">
				<!-- 상단 로그아웃, 마이페이지, 장바구니 버튼 -->
				<div id="topBtn">
					<div id="innerTopbtn">
						<a href="#">로그아웃</a> <span>|</span> <a href="#">마이페이지</a> <span>|</span>
						<a href="#">장바구니</a><br>
					</div>
					<!-- 사용자 방문 환영 글 -->
					<p>000님 환영합니다!</p>
				</div>
				<!-- 로고 및 검색창 -->
				<div id="schBox">
					<!-- 로고 -->
					<img alt="로고"
						src="https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png">
					<!-- 검색 박스 -->
					<div class="schBar">
						<!-- 검색창 -->
						<span class="icon"><i class="fa fa-search"></i></span> <input
							type="search" id="search" placeholder="Search" />
						<!-- 검색 아이콘 -->
						<a href="#"><span class="material-symbols-outlined">search</span></a>
					</div>
				</div>
			</div>
			<!-- 메뉴바 -->
			<div id="nav">
				<ul id="gnb">
					<li><a href="#">냉장제품</a></li>
					<li><a href="#">냉동제품</a></li>
					<li><a href="#">즉석조리제품</a></li>
					<li><a href="#">기타</a></li>
				</ul>
			</div>
		</div>




		<!-- MyPage 제목 -->
		<div class="myPage">
			<h2>My Page</h2>
		</div>

		<!-- 이곳에서 사용자의 정보를 수정할 수 있습니다.  작성 -->
		<div class="myPage2">
			<h6>이곳에서 사용자의 정보를 수정할 수 있습니다.</h6>
		</div>



		<!-- 배너 영역 -->
		<div id="banner">

			<a href="#"><p>마이페이지</p></a> <a href="#"><p>회원 정보 수정</p></a> <a
				href="#"><p>구매내역</p></a> <a href="#"><p>즐겨찾기</p></a>
		</div>




		<!-- 회원 정보 수정 태그-->
		<h4>회원 정보 수정</h4>

		<!-- 회원 정보 수정 밑에 줄 -->
		<div class="hr1">
			<hr>
		</div>

		<!-- 회원 정보 내용 박스 -->
		<div class="modify">
			<div id="modify1">
				<p>이름</p>
				<p id="mem_name"><%=request.getParameter("mem_name")%></p>

				<p>성별</p>
				<p id="gender"><%=request.getParameter("gender")%></p>

				<p>생년월일</p>
				<p id="birthdate"><%=request.getParameter("birthdate")%></p>

				<p>회원아이디</p>
				<p id="id"><%=request.getParameter("id")%></p>


				<p>비밀번호</p>
				<input type="password" name="pw" id="pw1">

				<p>주소</p>
				<input type="text" name="m_address" id="m_address">

				<p>전화번호</p>
				<input type="text" name="phone_number" id="phone_number">
			</div>

			<div id="modify2">
				<p>비밀번호 확인*</p>
				<input type="password" name="pw" id="pw2">
			</div>

		</div>


		<!-- 알레르기 정보 수정 태그 -->
		<h4>알레르기 정보 수정</h4>

		<!-- 알레르기 정보 수정 밑에 줄 -->
		<div class="hr2">
			<hr>
		</div>


		<!-- 이곳에서 재설정하시면 추후 서비스를 이용하실 때 재적용됩니다. 알레르기는 식품의약품안전처의 기준을 따르고
				있습니다. 태그 -->
		<div class="myPage3">
			<h6>이곳에서 재설정하시면 추후 서비스를 이용하실 때 재적용됩니다. 알레르기는 식품의약품안전처의 기준을 따르고
				있습니다.</h6>
		</div>


		<!-- 알레르기 정보 수정 체크 리스트 -->
		<div class="checkboxList">
			<input type="checkbox" id="cb1" name="food" value="난류가금류"><label
				for="cb1"></label>난류(가금류) <input type="checkbox" id="cb2"
				name="food" value="소고기"><label for="cb2"></label>소고기 <input
				type="checkbox" id="cb3" name="food" value="돼지고기"><label
				for="cb3"></label>돼지고기 <input type="checkbox" id="cb4" name="food"
				value="닭고기"><label for="cb4"></label>닭고기 <input
				type="checkbox" id="cb5" name="food" value="새우"><label
				for="cb5"></label>새우 <br> <input type="checkbox" id="cb6"
				name="food" value="게"><label for="cb6"></label>게 <input
				type="checkbox" id="cb7" name="food" value="오징어"><label
				for="cb7"></label>오징어 <input type="checkbox" id="cb8" name="food"
				value="고등어"><label for="cb8"></label>고등어 <input
				type="checkbox" id="cb9" name="food" value="조개류"><label
				for="cb9"></label>조개류 <input type="checkbox" id="cb10" name="food"
				value="우유"><label for="cb10"></label>우유 <br> <input
				type="checkbox" id="cb11" name="food" value="땅콩"><label
				for="cb11"></label>땅콩 <input type="checkbox" id="cb12" name="food"
				value="호두"><label for="cb12"></label>호두 <input
				type="checkbox" id="cb13" name="food" value="잣"><label
				for="cb13"></label>잣 <input type="checkbox" id="cb14" name="food"
				value="대두"><label for="cb14"></label>대두 <input
				type="checkbox" id="cb15" name="food" value="복숭아"><label
				for="cb15"></label>복숭아 <br> <input type="checkbox" id="cb16"
				name="food" value="토마토"><label for="cb16"></label>토마토 <input
				type="checkbox" id="cb17" name="food" value="밀"><label
				for="cb17"></label>밀 <input type="checkbox" id="cb18" name="food"
				value="메밀"><label for="cb18"></label>메밀 <input
				type="checkbox" id="cb19" name="food" value="아황산류"><label
				for="cb19"></label>아황산류
		</div>





		<!-- 맨 밑 버튼 -->
		<div class="btn">
			<button id="backBtn">저장하지 않고 돌아가기</button>
			<a href="#"></a>

			<button id="saveBtn">회원정보 수정 후 저장</button>
			<a href="#"></a>
		</div>

	</form>
</body>
</html>