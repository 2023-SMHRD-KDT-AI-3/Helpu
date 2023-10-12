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
<!-- ajax 라이브러리 불러오기 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- ajax사용 -->
<script type="text/javascript">
	function search() {
		var search = $("#search").val();
		alert(search);
		$.ajax({
			url : "SearchService.do",
			type : "post",
			data : {
				"search" : search
			},
			dataType : "json",
			success : searchList,
			error : function() {
				alert("error");
			}
		});
	}
	function searchList(data) {
		console.log(data);
		var html = "";
		$
				.each(
						data,
						function(index, obj) {
							html += "<div class='product product"+index+"'>";
							html += "<div class='textImg'>" + obj.pro_img
									+ "</div>";
							html += "<div class='Info'>";
							html += "<p>알레르기 유발 성분 N개 포함</p>";
							html += "<p>" + obj.pro_maker + "</p>";
							html += "<p>" + obj.pro_name + "</p>";
							html += "<p>" + obj.pro_price + "</p>";
							html += "<div class='fvrbtnBox'>";
							html += "<button type='submit' class='fvrBtn' value='test' style='cursor:pointer;'><span class='material-symbols-outlined'> favorite </span></button>";
							html += "</div>";
							html += "<div class='bskbtnBox'>";
							html += "<button type='submit' class='bskBtn' style='cursor:pointer;'><span class='material-symbols-outlined'>shopping_cart_checkout </span></button>";
							html += "</div>";
							html += "<hr />";
							html += "<div class='tag'>";
							html += "<span>#새우</span> <span>#밀</span>";
							html += "</div>";
							html += "</div>";
							html += "</div>";
						});
		//alert(data);
		console.log(html);
		$(".schContents").html(html);
	}
</script>
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
						src="https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png">
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

		<div id="container">
			<div id="leftMenu">
				<a href="#">사용자 정보 자동 적용</a> <a href="#">사용자 정보 간편 수정</a> <a
					href="#">알레르기 추가 체크 서비스</a>
				<form action="#" method="post">
					<ul class="checkboxMenu">
						<li><input type="checkbox" name="allergy" value="난류가금류"><span>난류(가금류)</span></li>
						<li><input type="checkbox" name="allergy" value="소고기"><span>소고기</span></li>
						<li><input type="checkbox" name="allergy" value="돼지고기"><span>돼지고기</span></li>
						<li><input type="checkbox" name="allergy" value="닭고기"><span>닭고기</span></li>
						<li><input type="checkbox" name="allergy" value="새우"><span>새우</span></li>
						<li><input type="checkbox" name="allergy" value="게"><span>게</span></li>
						<li><input type="checkbox" name="allergy" value="오징어"><span>오징어</span></li>
						<li><input type="checkbox" name="allergy" value="고등어"><span>고등어</span></li>
						<li><input type="checkbox" name="allergy" value="조개류"><span>조개류</span></li>
						<li><input type="checkbox" name="allergy" value="우유"><span>우유</span></li>
						<li><input type="checkbox" name="allergy" value="땅콩"><span>땅콩</span></li>
						<li><input type="checkbox" name="allergy" value="호두"><span>호두</span></li>
						<li><input type="checkbox" name="allergy" value="잣"><span>잣</span></li>
						<li><input type="checkbox" name="allergy" value="대두"><span>대두</span></li>
						<li><input type="checkbox" name="allergy" value="복숭아"><span>복숭아</span></li>
						<li><input type="checkbox" name="allergy" value="토마토"><span>토마토</span></li>
						<li><input type="checkbox" name="allergy" value="밀"><span>밀</span></li>
						<li><input type="checkbox" name="allergy" value="메밀"><span>메밀</span></li>
						<li><input type="checkbox" name="allergy" value="아황산류"><span>아황산류</span></li>
						<li><input type="submit" name="allergy" value="적용하기"></li>
					</ul>
				</form>
			</div>
			<!-- 검색 시 출력되는 제품 단락 -->
			<div class="schContents">
				<!-- <!-- <div class="product product1">
					<div class="textImg"></div>
					<div class="Info">
						<p>알레르기 유발 성분 n개 포함</p>
						<p>농심</p>
						<p>새우깡</p>
						<p>1,400 원</p>
						클릭 시 즐겨찾기에 추가해주는 버튼
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test"
								style='cursor: pointer;'>
								<span class="material-symbols-outlined"> favorite </span>
							</button>
						</div>
						클릭 시 장바구니에 추가해주는 버튼
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined">shopping_cart_checkout
								</span>
							</button>
						</div>
						구분선
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
						클릭 시 즐겨찾기에 추가해주는 버튼
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined"> favorite </span>
							</button>
						</div>
						클릭 시 장바구니에 추가해주는 버튼
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined">shopping_cart_checkout
								</span>
							</button>
						</div>
						구분선
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
						클릭 시 즐겨찾기에 추가해주는 버튼
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined"> favorite </span>
							</button>
						</div>
						클릭 시 장바구니에 추가해주는 버튼
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined">shopping_cart_checkout
								</span>
							</button>
						</div>
						구분선
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
						클릭 시 즐겨찾기에 추가해주는 버튼
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined"> favorite </span>
							</button>
						</div>
						클릭 시 장바구니에 추가해주는 버튼
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
								<span class="material-symbols-outlined">shopping_cart_checkout
								</span>
							</button>
						</div>
						구분선
						<hr />
						<div class="tag">
							<span>#새우</span> <span>#밀</span>
						</div>
					</div>
				</div> -->
				-->
			</div>
		</div>

		<div id="footer"></div>


	</div>
</body>
</html>