<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/favorites.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>

	<!-- <div id="wrap"> -->
	<div id="header">
			<div id="innerHeader">
				<!-- 상단 로그아웃, 마이페이지, 장바구니 버튼 -->
				<div id="topBtn">
					<div id="innerTopbtn">
						<a href="logout.do">로그아웃</a> <span>|</span> <a href="gomypage.do">마이페이지</a>
						<span>|</span> <a href="gobasket.do">장바구니</a><br>
					</div>
					<!-- 사용자 방문 환영 글 -->
					<p class="username">${info.mem_name}님 환영합니다!</p>
				</div>
				<!-- 로고 및 검색창 -->
				<div id="schBox">
					<!-- 로고 -->
					<a href="gomain.do"><img alt="로고" src="imgs/logo.png"></a>
					<!-- 검색 박스 -->
					<div class="schBar">
						<!-- 검색창 -->
						<span class="icon"><i class="fa fa-search"></i></span> <input
							type="search" id="search" placeholder="Search" />
						<!-- 검색 돋보기 아이콘 -->
						<div class="iconBox">
							<button type="button" onclick="search()" class="schIcon"
								style='cursor: pointer;'>
								<span class="material-symbols-outlined">search</span>
							</button>
						</div>
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

	<!-- 즐겨찾기 영역 -->
	<div id="container">

		<h2>즐겨찾기</h2>
		<!-- 선택 시 처리영역 -->
		<div>
			<!-- 전체 선택 및 해제 기능 -->
			<h4>
				<input type='checkbox' name='select' value='selectall'
					onclick='selectAll(this)' /> <b>전체선택/해제</b>
				<script type="text/javascript">
				function selectAll(selectAll) {
					const checkboxes
						= document.getElementsByName('select');
	
					checkboxes.forEach((checkbox) => {
						checkbox.checked = selectAll.checked;
					})
				}</script>
				
			</h4>
		</div>
		
		<!-- 구분선 -->
		<hr>
		
		<ul>
			<li>
				<div class="fvrContents">
	
					<!-- 즐겨찾기에 등록된 제품 정보 영역  -->
					<div class="fvrProduct">
						<input type="checkbox" name='select'>
						<!-- 임시 이미지 영역 -->
						<div>
							<img class="fvrImg">
						</div>
	
						<div class="fvrProductInfo">
							<a href="#">[농심] 새우깡 190 g </a>
							<p>1,400원</p>
						</div>
						<!-- 바로구매 버튼 및 장바구니 버튼 -->
						<div class="fvrselectBtn">
							<button id="btn1">바로 구매</button>
							<a href="#"></a> <br>
							<button id="btn2">장바구니</button>
							<a href="#"></a>
						</div>
					</div>
				</div>
			</li>
		</ul>

	<!-- 페이지 버튼 -->
	<div class="pagination-container">
		<button id="btn3"> < </button>
		<a href="#"></a> 
		
		<button id="btn4">1</button>
		<a href="#"></a>
		
		<button id="btn5">2</button>
		<a href="#"></a>
		
		<button id="btn6">3</button>
		<a href="#"></a>
		
		<button id="btn7">4</button>
		<a href="#"></a>
		
		<button id="btn8">5</button>
		<a href="#"></a>
		
		<button id="btn9"> > </button>
		<a href="#"></a>
	</div>


	<!-- </div> -->
		
		
	</div>
	


</body>
</html>