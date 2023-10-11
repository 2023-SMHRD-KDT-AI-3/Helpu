<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/product.css">
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
		
		
		<div id="container">
			<div id="productInfo">
				<div class="proImg"></div>
				<div class="proMoreInfo">
					<div class= "moreInfo">
						<p>알레르기 유발 성분 2개</p>
						<p>농심</p>
						<p>새우깡 190g</p>
						<p>1,400 원</p>
					</div>
					<div class="productBtn">
						<a href="#">장바구니</a> <a href="#">구매하기</a>
					</div>
				</div>
				<div class="bestReview">
					<p>구매자들이 뽑은 베스트 리뷰</p>
					<div class="bestReviewbox">
						<span>사용자 명</span>
						<span>정말 맛있고 또 구매하고 싶어요! 안전 식품이에요!</span>
					</div>
				</div>
			</div>
			<div id="containerMenu">
				<ul>
					<li><a href="#">알러지 성분</a></li>
					<li><a href="#">영양성분</a></li>
					<li><a href="#">세부 원재료명 및 함량</a></li>
					<li><a href="#">추천상품</a></li>
					<li><a href="#">리뷰</a></li>
				</ul>
			</div>


			<div class="infoBox">
				<div class="allergyInfo">
					<p>제품에 포함된 알레르기 유발 성분</p>
					<div class="innerAllergy">
						<span>#새우</span>
						<span>#밀</span>
					</div>

				</div>
				<div class="nutrient">
					<p>영양성분 데이터</p>
					<p>차트...</p>
				</div>
				<div class="details">
					<p>세부 원재료명 및 함량</p>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random
						text. It has roots in a piece of classical Latin literature from
						45 BC, making it over 2000 years old. Richard McClintock, a Latin
						professor at Hampden-Sydney College in Virginia, looked up one of
						the more obscure Latin words, consectetur, from a Lorem Ipsum
						passage, and going through the cites of the word in classical
						literature, discovered the undoubtable source. Lorem Ipsum comes
						from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
						Malorum" (The Extremes of Good and Evil) by Cicero, written in 45
						BC. This book is a treatise on the theory of ethics, very popular
						during the Renaissance. The first line of Lorem Ipsum, "Lorem
						ipsum dolor sit amet..", comes from a line in section 1.10.32.
						Contrary to popular belief, Lorem Ipsum is not simply random
						text. It has roots in a piece of classical Latin literature from
						45 BC, making it over 2000 years old. Richard McClintock, a Latin
						professor at Hampden-Sydney College in Virginia, looked up one of
						the more obscure Latin words, consectetur, from a Lorem Ipsum
						passage, and going through the cites of the word in classical
						literature, discovered the undoubtable source. Lorem Ipsum comes
						from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
						Malorum" (The Extremes of Good and Evil) by Cicero, written in 45
						BC. This book is a treatise on the theory of ethics, very popular
						during the Renaissance. The first line of Lorem Ipsum, "Lorem
						ipsum dolor sit amet..", comes from a line in section 1.10.32.
						Contrary to popular belief, Lorem Ipsum is not simply random
						text. It has roots in a piece of classical Latin literature from
						45 BC, making it over 2000 years old. Richard McClintock, a Latin
						professor at Hampden-Sydney College in Virginia, looked up one of
						the more obscure Latin words, consectetur, from a Lorem Ipsum
						passage, and going through the cites of the word in classical
						literature, discovered the undoubtable source. Lorem Ipsum comes
						from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
						Malorum" (The Extremes of Good and Evil) by Cicero, written in 45
						BC. This book is a treatise on the theory of ethics, very popular
						during the Renaissance. The first line of Lorem Ipsum, "Lorem
						ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>

				</div>
				<div class="chucheon">
					<h2>추천 상품</h2>
					<p>다른 고객들이 함께 구매한 상품입니다.</p>
					<div class="chucheonSlide">
						<a href = "#">버튼</a>
						<div class="proSlide">
							<div class="productBox">
								<a href="#">
									<div class = "itemBox">
										<p>이미지</p>
										<p>상품 이름이 들어갑니다.</p>
									</div>
								</a>
							</div>
							<div class="productBox">
								<a href="#">
									<div class = "itemBox">
										<p>이미지</p>
										<p>상품 이름이 들어갑니다.</p>
									</div>
								</a>
							</div>
							<div class="productBox">
								<a href="#">
									<div class = "itemBox">
										<p>이미지</p>
										<p>상품 이름이 들어갑니다.</p>
									</div>
								</a>
							</div>
							<div class="productBox">
								<a href="#">
									<div class = "itemBox">
										<p>이미지</p>
										<p>상품 이름이 들어갑니다.</p>
									</div>
								</a>
							</div>
						</div>
						<a href = "#">버튼</a>
					</div>

				</div>
				<div class="review">
					<p>Review</p>
					<div class="reviewBox">
						<div class="proReview">
							<p><span>사용자 이름</span> <span>리뷰 내용이 들어갑니다.</span></p>
							<p><span>사용자 이름</span> <span>리뷰 내용이 들어갑니다.</span></p>
							<p><span>사용자 이름</span> <span>리뷰 내용이 들어갑니다.</span></p>
							<p><span>사용자 이름</span> <span>리뷰 내용이 들어갑니다.</span></p>
						</div>
					</div>
					<form action="#" method="post">
						<div class="inputReview">
							<span>사용자명</span><input type="text" name="reviewData">
							<input type="submit" value = "등록하기">
						</div>
					</form>
				</div>

			</div>

		</div>
		
	
			
		<div id="footer"></div>


	</div>
</body>
</html>