<%@page import="java.io.PrintWriter"%>
<%@page import="model.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/product.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	/*
	new Swiper('.swiper-container', {

		slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 30, // 슬라이드간 간격
		slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,

		loop : true, // 무한 반복

		pagination : { // 페이징
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		navigation : { // 네비게이션
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});
	*/
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
						<a href="logout.do">로그아웃</a> <span>|</span> <a href="gomypage.do?id=${info.id}">마이페이지</a>
						<span>|</span> <a href="gobasket.do?id=${info.id}">장바구니</a><br>
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
							type="search" id="search" placeholder="검색할 상품을 입력해주세요." />
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
					<li><a href="gomain.do">상품 검색 페이지</a></li>
					<li><a href="gomypage.do?id=${info.id}">마이페이지</a></li>
					<li><a href="gobasket.do?id=${info.id}">장바구니</a></li>
					<li><a href="gohistory.do">구매내역</a></li>
				</ul>
			</div>
		</div>


		<div id="container">
			<div id="productInfo">
				<div class="proImg">
					<img alt="임시이미지" src=${product.pro_img} >
				</div>
				<div class="proMoreInfo">
					<div class="moreInfo">
						<!-- <p class="includedAll">알레르기 유발 성분 개 포함</p> -->
						<p class="company">${product.pro_maker}</p>
						<p>
							<span class="proSubject">${product.pro_name}</span><span
								class="weight">${product.pro_gramper} g</span>
						</p>
						<p class="proPrice">${product.pro_price}원</p>
					</div>
					<div class="productBtn">
						<a href="#" id="basketBtn"><span class="proBtn">장바구니 추가</span></a>
						<a href="gobasket.do?id=${info.id}"><span class="proBtn proPurchase">장바구니 이동</span></a>
					</div>
				</div>
				<div class="bestReview">
					<span class="material-symbols-outlined heartIcon">favorite</span> <span>구매자들이
						뽑은 베스트 리뷰</span>
					<div class="bestReviewbox">
						<span>사용자 명</span> <span>정말 맛있고 또 구매하고 싶어요! 안전 식품이에요!</span>
					</div>
				</div>
			</div>
			<div id="containerMenu">
				<ul class="innerConmenu">
					<li><span><a>포함된 알레르기 성분</a></span></li>
					<li><span><a>영양성분</a></span></li>
					<li><span><a>세부 원재료명 및 함량</a></span></li>
					<li><span><a>리뷰</a></span></li>
				</ul>
			</div>


			<div class="infoBox">
				<div class="allergyInfo">
					<p>제품에 포함된 알레르기 유발 성분</p>
					<div class="innerAllergy">
					<%
					productDTO product = (productDTO) request.getAttribute("product");
					
					String[] allergy = product.getPro_haveIngredients().split(",");
					
					for(int i =0; i<allergy.length; i++){
						if(allergy[i]!=""){
							out.print("<span>#"+allergy[i]+"</span>");
						}
					}
					%>
					</div>

				</div>
				<div class="nutrient">
					<p>하루 권장 영양정보 비교</p>
					<div class ="chart">
						<div class="chartbox">
							<canvas id="Chart_calories"></canvas>
						</div>
						<div class="chartbox">
							<canvas id="Chart_augars"></canvas>
						</div>
						<div class="chartbox">
							<canvas id="Chart_sodium"></canvas>
						</div>
					</div>
				</div>
				<div class="details">
					<p>세부 원재료명 및 함량</p>
					<p>${product.pro_ingredients}</p>

				</div>
				<!--  
				<div class="chucheon">
					<div class="chuTitle">
						<h2>추천 상품</h2>
						<p class="chuSubtitle">다른 고객들이 함께 구매한 상품입니다.</p>
						
						<div class = "slider">
							<div class="slides"></div>
							<div class="slides"></div>
							<div class="slides"></div>
							<div class="slides"></div>
							<div class = "controls">
								<button type="button" style='cursor: pointer;' id="prev">
									<span class="material-symbols-outlined">chevron_left</span>
								</button>
								<button type="button" style='cursor: pointer;' id="next">
									<span class="material-symbols-outlined">chevron_right</span>
								</button>
							</div>
						</div>
					</div>
					-->
					<!-- 슬라이드 영역 
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
							<div class="swiper-slide">
								<img src="https://i.imgur.com/9M8l5PL.png">
							</div>
						</div> -->

					<!-- 네비게이션 -->
					<!-- <div class="swiper-button-next"></div> -->
					<!-- 다음 버튼 (오른쪽에 있는 버튼) 
						<div class="swiper-button-prev"></div> -->
					<!-- 이전 버튼 -->

					<!-- 페이징 -->
					<!--  <div class="swiper-pagination"></div>
					</div>
					<div style="text-align: center; margin-top: 5px;">랜덤사진 갤러리</div>
				</div>-->

				</div>
			

				<!-- 리뷰 영역 -->
				<div class="review">
					<p>Review</p>
					<div class="reviewBox">
						<div class="proReview">
							<c:forEach var="r_list" items="${r_list}" varStatus="status">	
								<p class="reviewContent">
									<span>${r_list.id}</span> <span>${r_list.rv_content}</span>
								</p>
							</c:forEach>
						</div>
					</div>
					<form action="#" method="post">
						<div class="inputReview">
							<span>${info.id}</span><input id = 'input_review' type="text" name="reviewData">
							 <input id="reviewBtn" type="button" value="등록하기" onclick='writeReview()'>
						</div>
					</form>
				</div>


			</div>

				<!-- 배너 영역 -->
				<div id="banner">
					<a href="gomypage.do"><p>마이페이지</p></a> 
					<!-- <a href="gofavoites.do"><p>즐겨찾기</p></a> -->
					<a href="gobasket.do?id=${info.id}"><p>장바구니</p></a>
					<div class="recent">
									<p>최근 담은 상품</p>
									<ul class="recentbox">
										<!-- 최근 담은 상품들을 나타내는 부분 -->
										<c:forEach var="recentProduct" items="${recentProducts}">
										<!-- 	<li><a href="#"> <img alt="상품 이미지"
													src="${recentProduct.pro_img}">
													<p>${recentProduct.pro_name}</p>
											</a>
												<hr></li>  -->
										</c:forEach>
									</ul>
								</div>
					<!-- 상단으로 다시 올라가는 버튼 -->
					<div id = "bannerTopbtn">
						<button type="button"style='cursor: pointer;'>
							<span class="material-symbols-outlined">arrow_upward</span>		
						</button>	
					</div>
				</div>
		
			</div>


			<script>
			
			
			
			function writeReview() {
	 			 var id='${info.id}';
	 			 var pro_code = '${product.pro_code}';
	 			 var content = document.getElementById("input_review").value;
	 			 console.log(content);
	 		     $.ajax({
	 		        url: "reviewService.do",
	 		        type: "post",
	 		        data: {
	 		            "id": id,
	 		            "pro_code": pro_code,
						"content": content,
	 		        },
	 		        success: function (response) {
	 		                alert("성공");
	 		               location.reload();
	 		        },
	 		        error: function () {
	 		            alert("error");
	 		        }
	 		    }); 
	 		}
			
	
		
		// 상단 이동 버튼
 		$(window).scroll(function(){
 			if ($(this).scrollTop() > 300){
 				$('#bannerTopbtn').show();
 			}
 		});
 		$('#bannerTopbtn').click(function(){
 			$('html, body').animate({scrollTop:0},400);
 			return false;
 		});
 		
 		
 		
 		
 		
 		
 		
 		
 		
		</script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
		<script>
				
		const calories = document.getElementById('Chart_calories').getContext('2d');
		const Chart_calories = new Chart(calories, {
			data: {
				datasets: [{
					type: 'doughnut',
					label: ${product.pro_gramper}+'g당 칼로리',
					data: [${product.pro_calories},2600-${product.pro_calories}],
					borderWidth: 1
				}],
				labels:['칼로리']
			}
		});											
			</script>
			<script>
		
				const augars = document.getElementById('Chart_augars').getContext('2d');
				const Chart_augars = new Chart(augars, {
					data: {
						datasets: [{
							type: 'doughnut',
							label: ${product.pro_gramper}+'g당 당류',
							data: [${product.pro_sugars},25-${product.pro_sugars}],
							borderWidth: 1
						}],
						labels:['당류']
					}
				});							
			</script>
			<script>
				
				const sodium = document.getElementById('Chart_sodium').getContext('2d');
				const Chart_sodium = new Chart(sodium, {
					data: {
						datasets: [{
							type: 'doughnut',
							label: ${product.pro_gramper}+'g당  나트륨',
							data: [${product.pro_sodium},2000-${product.pro_sodium}],
							borderWidth: 1
						}],
						labels:['나트륨']
					}
				});
				
				// 장바구니 배너 
			 	
			 	 $(document).ready(function() {
		   $.ajax({
		       url: "recentProductService.do",
		       type: "post",
		       data: {
		           "id": "${info.id}"
		       },
		       dataType: "json",
		       success: function(recentProducts) { 
		       	// console.log(recentProducts[0].pro_img);
		           var recentProductsContainer = $(".recentbox");          
		           for (var i = 0; i < 3 && i < recentProducts.length; i++) {       
		           	var product = recentProducts[i].pro_img;
		           	var productName = recentProducts[i].pro_name;
		           	// console.log(product)
		           	var productHTML = 
		           		'<li><img class="bannerImg" alt="상품 이미지" src="'+product+'"><p class="bannerProname">'+productName+'</p><hr></li>';
						//console.log(productHTML)
		               recentProductsContainer.append(productHTML);
		           }
		       },
		       error: function() {
		           // 에러 시 처리할 내용
		       }
		   });
		});

		let bascketBtn=document.getElementById("basketBtn");
		bascketBtn.addEventListener("click",function(){
			
			var id='${info.id}';
			var pro_code='${product.pro_code}'
			$.ajax({
			   url: "basketService.do",
			   type: "post",
			   data: {
				   "id": id,
				   "pro_code": pro_code	         
			   },
			   success: function (response) {
				   if (response) {
					   alert("장바구니에 상품이 추가되었습니다.");
					   location.reload();
				   } else {
					   alert("장바구니 추가 실패");
				   }
			   },
			   error: function () {
				   alert("error");
			   }
		   }); 

		})				
 		
				
			</script>
			<script src="http://code.jquery.com/jquery-latest.min.js"></script>
			<!-- 메인 -->
</body>
</html>