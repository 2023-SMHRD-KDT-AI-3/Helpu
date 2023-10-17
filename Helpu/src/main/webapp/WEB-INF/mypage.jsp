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

		
		
			<!-- 배너 영역 -->
			<div id="banner">


				<button style='cursor: pointer;' id="mp">
					<a href="gomypage.do">마이페이지</a>
				</button>
				<br>
				<button style='cursor: pointer;' id="edit">
					<a href="gomypage.do" class="mybannerBtn">회원 정보 수정</a>
				</button>
				<br>
				<button style='cursor: pointer;' id="purchase">
					<a href="gohistory.do" class="mybannerBtn">구매내역</a>
				</button>
				<br>
				<button style='cursor: pointer;' id="favorite">
					<a href="gofavorites.do" class="mybannerBtn">즐겨찾기</a>
				</button>

			</div>


			
			
				<!-- MyPage 제목 -->
				<div class="myPage">
					<h2>My Page</h2>
				</div>

				<!-- 이곳에서 사용자의 정보를 수정할 수 있습니다.  작성 -->
				<div class="myPage2">
					<h6>이곳에서 사용자의 정보를 수정할 수 있습니다.</h6>
				</div>








				<!-- 회원 정보 수정 태그-->
				<div class="h4member">
					<h4>회원 정보 수정</h4>
				</div>


				<!-- 회원 정보 수정 밑에 줄 -->
				<div class="hr1">
					<hr>
				</div>


				<!-- 회원 정보 수정 밑에 내용 -->
				<div class="myPage3">
					<h6>이곳에서 회원 정보를 수정하실 수 있습니다.</h6>
				</div>

				<!-- 회원 정보 내용 박스 -->
				<div class="modify">
					<div id="modify1">
						<p>이름</p>
						<p id="mem_name"><%=request.getParameter("mem_name")%></p>


						<p>성별</p>
						<div class="genderBox">
							<%
							String gender = request.getParameter("gender");
							String maleChecked = "";
							String femaleChecked = "";

							if (gender != null) {
								if (gender.equals("m")) {
									maleChecked = "checked";
								} else if (gender.equals("f")) {
									femaleChecked = "checked";
								}
							}
							%>

							<input type="radio" class="gender" name="gender" value="m" <%=maleChecked%> disabled>남성
							<input type="radio" class="gender" name="gender" value="f" <%=femaleChecked%> disabled>여성
								
								
						</div>


						<p>생년월일</p>
						<p id="birthdate"><%=request.getParameter("birthdate")%></p>

						<p>회원아이디</p>
						<p id="id"><%=request.getParameter("id")%></p>


						<p>비밀번호<span class="required">*</span></p>
						<!-- <p>비밀번호</p> -->
						<input type="password" name="pw" id="pw1" value="<%=request.getParameter("pw")%>">
							
						<p>주소<span class="required">*</span></p>
						<input type="text" name="m_address" id="m_address" value="<%=request.getParameter("m_address")%>">
							
						<p>전화번호<span class="required">*</span></p>
						<input type="text" name="phone_number" id="phone_number" value="<%=request.getParameter("phone_number")%>">
							
					</div>

					<!-- 비밀번호 확인 따로 -->
					<div id="modify2">
						<p id="pwCheck">비밀번호 확인<span class="required">*</span></p>
						<input type="password" name="pw" id="pw2" value="<%=request.getParameter("pw")%>">
							
						<p id="pwMatchMessage"></p>

						<!-- 비밀번호, 비밀번호확인 일치 여부 -->
						<script>
							var pw1 = document.getElementById("pw1");
							var pw2 = document.getElementById("pw2");
							var pwMatchMessage = document
									.getElementById("pwMatchMessage");

							function checkPasswordMatch() {
								if (pw1.value === pw2.value) {
									pwMatchMessage.innerHTML = "비밀번호 일치";
								} else {
									pwMatchMessage.innerHTML = "비밀번호 불일치";
								}
							}

							// 입력 필드 값이 변경될 때마다 일치 여부 확인
							pw1.addEventListener("input", checkPasswordMatch);
							pw2.addEventListener("input", checkPasswordMatch);
						</script>
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
						<div class = "innerCheckbox">
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb1" name="food" value="난류가금류"><label for="cb1"></label>난류(가금류)
							</div>
							<div class="checkboxItem">	
								<input type="checkbox" class="checkbtn" id="cb2" name="food" value="소고기"><label for="cb2"></label>소고기
							</div>
							<div class="checkboxItem">	
								<input type="checkbox" class="checkbtn" id="cb3" name="food" value="돼지고기"><label for="cb3"></label>돼지고기
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb4" name="food" value="닭고기"><label for="cb4"></label>닭고기
							</div><br>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb5" name="food" value="새우"><label for="cb5"></label>새우
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb6" name="food" value="게"><label for="cb6"></label>게
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb7" name="food" value="오징어"><label for="cb7"></label>오징어
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb8" name="food" value="고등어"><label for="cb8"></label>고등어
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb9" name="food" value="조개류"><label for="cb9"></label>조개류
							</div><br>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb10" name="food" value="우유"><label for="cb10"></label>우유
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb11" name="food" value="땅콩"><label for="cb11"></label>땅콩
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb12" name="food" value="호두"><label for="cb12"></label>호두
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb13" name="food" value="잣"><label for="cb13"></label>잣
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb14" name="food" value="대두"><label for="cb14"></label>대두
							</div><br>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb15" name="food" value="복숭아"><label for="cb15"></label>복숭아
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb16" name="food" value="토마토"><label for="cb16"></label>토마토
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb17" name="food" value="밀"><label for="cb17"></label>밀
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb18" name="food" value="메밀"><label for="cb18"></label>메밀
							</div>
							<div class="checkboxItem">
								<input type="checkbox" class="checkbtn" id="cb19" name="food" value="아황산류"><label for="cb19"></label>아황산류
							</div>
						</div>
					</div>





				<!-- 맨 밑 버튼 -->
				<div class="btn">

					<button id="backBtn" style='cursor: pointer;'>
						<a href="gomain.do">저장하지 않고 돌아가기</a>
					</button> 

					<button id="saveBtn" style='cursor: pointer;'>
						<a href="">회원정보 수정 후 저장</a>
					</button>

				</div>
			
		
	</form>
</body>
</html>