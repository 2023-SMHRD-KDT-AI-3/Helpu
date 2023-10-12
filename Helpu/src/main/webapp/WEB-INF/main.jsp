<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
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
						<a href="logout.do">로그아웃</a> <span>|</span> <a href="gomypage.do">마이페이지</a> <span>|</span>
						<a href="gobasket.do">장바구니</a><br>
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
						<!-- 검색 돋보기 아이콘 -->
						<div class="iconBox">
							<button type="submit" class = "schIcon" style='cursor:pointer;'><span class="material-symbols-outlined">search</span></button>
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

		<div id="container">
			<div id="leftMenu">
				<a href="#">사용자 정보 자동 적용</a> <a href="#">사용자 정보 간편 수정</a> <a
					href="#">알레르기 추가 체크 서비스</a>
				<form action="#" method="post">
					<ul class="checkboxMenu">
						<li><input type="radio" name="allergy" value="eggs"><span>난류(가금류)</span></li>
						<li><input type="radio" name="allergy" value="beef"><span>소고기</span></li>
						<li><input type="radio" name="allergy" value="pork"><span>돼지고기</span></li>
						<li><input type="radio" name="allergy" value="chicken"><span>닭고기</span></li>
						<li><input type="radio" name="allergy" value="shrimp"><span>새우</span></li>
						<li><input type="radio" name="allergy" value="crab"><span>게</span></li>
						<li><input type="radio" name="allergy" value="squid"><span>오징어</span></li>
						<li><input type="radio" name="allergy" value="blueFish"><span>고등어</span></li>
						<li><input type="radio" name="allergy" value="clam"><span>조개류</span></li>
						<li><input type="radio" name="allergy" value="milk"><span>우유</span></li>
						<li><input type="radio" name="allergy" value="peanut"><span>땅콩</span></li>
						<li><input type="radio" name="allergy" value="walnut"><span>호두</span></li>
						<li><input type="radio" name="allergy" value="pineNut"><span>잣</span></li>
						<li><input type="radio" name="allergy" value="daedu"><span>대두</span></li>
						<li><input type="radio" name="allergy" value="peach"><span>복숭아</span></li>
						<li><input type="radio" name="allergy" value="tomato"><span>토마토</span></li>
						<li><input type="radio" name="allergy" value="wheat"><span>밀</span></li>
						<li><input type="radio" name="allergy" value="buckwheat"><span>메밀</span></li>
						<li><input type="radio" name="allergy" value="acids"><span>아황산류</span></li>
						<li><input type="submit" name="allergy" value="적용하기"></li>
					</ul>
				</form>
			</div>
			<!-- 검색 시 출력되는 제품 단락 -->
			<div class="schContents">
				<div class="product product1">
					<div class="textImg"></div>
					<div class="Info">
						<p>알레르기 유발 성분 n개 포함</p>
						<p>농심</p>
						<p>새우깡</p>
						<p>1,400 원</p>
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor:pointer;'><span class="material-symbols-outlined"> favorite </span></button>
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor:pointer;'><span class="material-symbols-outlined">shopping_cart_checkout </span></button>
						</div>
						<!-- 구분선 -->
						<hr />
						<div class="tag">
							<span>#새우</span> <span>#밀</span>
						</div>
					</div>
				</div>
				<div class="product product2">
					<div class="textImg"></div>
					<div class="Info">
						<p>알레르기 유발 성분 n개 포함</p>
						<p>농심</p>
						<p>새우깡</p>
						<p>1,400 원</p>
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor:pointer;'><span class="material-symbols-outlined"> favorite </span></button>
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor:pointer;'><span class="material-symbols-outlined">shopping_cart_checkout </span></button>
						</div>
						<!-- 구분선 -->
						<hr />
						<div class="tag">
							<span>#새우</span> <span>#밀</span>
						</div>
					</div>
				</div>
				<div class="product product3">
					<div class="textImg"></div>
					<div class="Info">
						<p>알레르기 유발 성분 n개 포함</p>
						<p>농심</p>
						<p>새우깡</p>
						<p>1,400 원</p>
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor:pointer;'><span class="material-symbols-outlined"> favorite </span></button>
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor:pointer;'><span class="material-symbols-outlined">shopping_cart_checkout </span></button>
						</div>
						<!-- 구분선 -->
						<hr />
						<div class="tag">
							<span>#새우</span> <span>#밀</span>
						</div>
					</div>
				</div>
				<div class="product product4">
					<div class="textImg"></div>
					<div class="Info">
						<p>알레르기 유발 성분 n개 포함</p>
						<p>농심</p>
						<p>새우깡</p>
						<p>1,400 원</p>
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor:pointer;'><span class="material-symbols-outlined"> favorite </span></button>
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor:pointer;'><span class="material-symbols-outlined">shopping_cart_checkout </span></button>
						</div>
						<!-- 구분선 -->
						<hr />
						<div class="tag">
							<span>#새우</span> <span>#밀</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer"></div>


	</div>
</body>
</html>