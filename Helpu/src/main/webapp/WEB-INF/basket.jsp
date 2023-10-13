</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/basket.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<body>


	<div id="wrap">
		<!-- 헤더 부분 -->
		<div id="header">
			<div id="innerHeader">
				<!-- 상단 로그아웃, 마이페이지, 장바구니 버튼 -->
				<div id="topBtn">
					<div id="innerTopbtn">
						<a href="logout.do">로그아웃</a> <span>|</span> <a href="gomypage.do">마이페이지</a>
						<span>|</span> <a href="gobasket.do">장바구니</a><br>
					</div>
					<!-- 사용자 방문 환영 글 -->
					<p>000님 환영합니다!</p>
				</div>
				<!-- 로고 및 검색창 -->
				<div id="schBox">
					<!-- 로고 -->
					<img alt="로고"
						src="imgs/logo.png">
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

	<div class = "bskWrap">
	<form action="#" method="post">
		<div class="basket">
			<h2>장바구니</h2>

		</div>
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
		<hr>

		<!-- 장바구니 리스트 -->
				<div class="container">
					<p class = "proInfo proCheckbox">
						<input type="checkbox" name="select" value="select">
					</p>
						<img class="productImg" src="imgs/순수본0.jpg" alt="제품이미지">
					<!-- 제품명 클릭 시 상품 페이지로 이동 처리 : 빼도 됨 -->
					<p class="proInfo productName">
						<a href= "#" id = "proName">순수본 제품01</a>
					</p>
					<div class = "proInfo cntbox">
						<button class = "minus">-</button>
						<span>1</span>
						<button class = "plus">+</button>
					</div>
					<p class="proInfo payment">1,200 원</p>
					<!--  
					<div class="buyNow">
						<p>
							<button id="btn1">바로 구매</button>
							<script src=""></script>
							<br>
							<button id="btn2">즐겨찾기</button>
							<script src=""></script>
						</p>
					-->
					</div>
				 <!-- 결제 예정 금액 -->
				<div class="payment-container">

					<div class="pa">
						<span>상품 금액</span>
						<div>
							<p class="won1">1200원</p>
						</div>
					</div>
					+
					<div class="delivery">
						<span>배송비</span>
						<div>
							<p class="won2">3000원</p>
						</div>
					</div>
					=
					<div class="total">
						<span>결제 예정 금액</span>
						<div>
							<p class="won3">1200원</p>
						</div>
					</div>
				</div>






		<!-- 선택 상품 결제, 전체 상품 결제 -->
		<div class="pagination-container">
			<span>
				<button id="btn3" style='cursor: pointer;'>선택 상품 결제</button> <script src=""></script>
			</span> <span>
				<button id="btn4" style='cursor: pointer;'>전체 상품 결제</button> <script src=""></script>
			</span>
		</div>
	</form>
	</div>
	
	</div>
	
</body>
</html>