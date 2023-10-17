<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/history.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


</head>
<body>

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


	<div class="history">

		<h2>구매내역</h2>

	</div>

		<ul>
			<li>
				<div class="post-container">
					

					<!-- 임시 이미지 영역 -->
					<div>
						<img class="product_img">
					</div>

					<div class="product_name">
						<a href="#">[농심] 새우깡 190 g </a>
						<p>1,400원</p>
					</div>


					<div class="post-title purchase_date">구매일자</div>

					<div class="payment">결제방법</div>

					<!-- 재구매,리뷰작성 버튼 -->
					<div class=reviewContainer>
						<button class="repurchaseBtn">재구매</button>
						<br>
						<button class="reviewBtn">리뷰작성</button>
					</div>
					
					<!-- 구매내역 삭제 -->
					<button class="close"><span class="material-symbols-outlined">close</span></button>
					
				</div>
			</li>
		</ul>
		
	
	
	<!-- 페이지 버튼 -->
	<div class="pagination-container2">
		<button id="btn3"> <span class="material-symbols-outlined">chevron_left</span> </button>
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
		
		<button id="btn3"> <span class="material-symbols-outlined">chevron_right</span> </button>
		<a href="#"></a>
	</div>
	
	
	
	
</body>
</html>