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
					<p>${info.mem_name}님 환영합니다!</p>
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

		<div id="container">
			<div id="leftMenu">
				<button class="leftmenuBtn" style='cursor: pointer;'>
					<span class="userData">사용자 정보 자동 적용</span>
				</button>
				<button class="leftmenuBtn" id="editData" style='cursor: pointer;'>
					<span class="editData">사용자 정보 간편 수정</span>
				</button>
				<div class = "leftMenuCheckbox">
					<button class="leftmenuBtn leftmenuBtn3" class="bskBtn" style='cursor: pointer;'>
							<span class="checkservice">알레르기 추가 체크 서비스</span>
					</button>
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
							<li><button id="checkSubmit" style='cursor: pointer;' onclick="checkbox()">적용하기</button></li>
						</ul>
					</form>
				</div>
			</div>
			<!-- 검색 시 출력되는 제품 단락 -->
			<div class="schContents">
			<!-- 제품 전체 출력 영역 -->
				<div class="productbox">
				<!-- 제품 1번 단락 -->
					<div class="innerproBox innerproBox1">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 2번 단락 -->
					<div class="innerproBox innerproBox2">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 3번 단락 -->
					<div class="innerproBox innerproBox3">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 4번 단락 -->
					<div class="innerproBox innerproBox4">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 5번 단락 -->
					<div class="innerproBox innerproBox5">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 6번 단락 -->
					<div class="innerproBox innerproBox6">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					<!-- 제품 7번 단락 -->
					<div class="innerproBox innerproBox7">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
					
					
					<!-- 제품 8번 단락 -->
					<div class="innerproBox innerproBox8">
						<div class="product">
							<div class="textImg">
							
							</div>
								<div class="Info">
									<p>알레르기 유발 성분 n개 포함</p>
									<p>농심</p>
									<p>새우깡</p>
									<p>1,400 원</p>
								</div>
						</div>
							
						<!-- 클릭 시 즐겨찾기에 추가해주는 버튼 -->
						<div class="fvrbtnBox">
							<button type="submit" class="fvrBtn" value="test" style='cursor: pointer;'>
							<span class="material-symbols-outlined"> favorite </span></button>	
						</div>
						<!-- 클릭 시 장바구니에 추가해주는 버튼 -->
						<div class="bskbtnBox">
							<button type="submit" class="bskBtn" style='cursor: pointer;'>
							<span class="material-symbols-outlined">shopping_cart_checkout</span></button>
						</div>
									
						<!-- 구분선 -->
						<div class = "tag">
							<hr />
							<div class="innerTag">
								<span>#새우</span><span>#밀</span>
							</div>
						</div>
					</div>
				
				</div>
				
				
				<!-- 제품 단락 끝 -->
			</div>
			
			<!-- 배너 영역 -->
		<div id="banner">
			<a href="gomypage.do"><p>마이페이지</p></a> <a href="gofavoites.do"><p>즐겨찾기</p></a> <a href="gobasket.do"><p>장바구니</p></a>
			<div class="recent">
				<a href="#"><p>최근 본 상품</p></a>
				<ul class="recentbox">
					<li><a href="#"><img alt="임시이미지"
						src="https://image.nongshim.com/non/pro/1594682430086.jpg">
						<p>제품명</p></a>
						<hr></li>
					<li><a href="#"><img alt="임시이미지"
						src="https://image.nongshim.com/non/pro/1594682430086.jpg">
						<p>제품명</p></a>
						<hr></li>
					<li><a href="#"><img alt="임시이미지"
						src="https://image.nongshim.com/non/pro/1594682430086.jpg">
						<p>제품명</p></a>
						</li>
				</ul>
			</div>
		</div>
			
		</div>
		
		<!-- 팝업창 -->
		<div id="modal">
		  <div id="innerModal">
		      <div class = "editAllergy">
		      	<p class="popupTitle">사용자 알레르기 정보 간편 수정</p>
		      	<hr>
		      	<p class="subtext">이곳에서 재설정하시면 추후 서비스를 이용하실 때 적용됩니다.</p>
		      	<p class="subtext">알레르기는 식품의약품안전처의 기준을 따르고 있습니다.</p>
		      </div>
		      
		      <form action ="" method = "post">
		      		<div class="checkboxList">
					<input type="checkbox" id="cb1" name="food" value="난류가금류"><label for="cb1"></label>난류(가금류)
					<input type="checkbox" id="cb2" name="food" value="소고기"><label for="cb2"></label>소고기
					<input type="checkbox" id="cb3" name="food" value="돼지고기"><label for="cb3"></label>돼지고기
					<input type="checkbox" id="cb4" name="food" value="닭고기"><label for="cb4"></label>닭고기
					<input type="checkbox" id="cb5" name="food" value="새우"><label for="cb5"></label>새우
					<input type="checkbox" id="cb6" name="food" value="게"><label for="cb6"></label>게
					<input type="checkbox" id="cb7" name="food" value="오징어"><label for="cb7"></label>오징어
					<input type="checkbox" id="cb8" name="food" value="고등어"><label for="cb8"></label>고등어
					<input type="checkbox" id="cb9" name="food" value="조개류"><label for="cb9"></label>조개류
					<input type="checkbox" id="cb10" name="food" value="우유"><label for="cb10"></label>우유
					<input type="checkbox" id="cb11" name="food" value="땅콩"><label for="cb11"></label>땅콩
					<input type="checkbox" id="cb12" name="food" value="호두"><label for="cb12"></label>호두
					<input type="checkbox" id="cb13" name="food" value="잣"><label for="cb13"></label>잣
					<input type="checkbox" id="cb14" name="food" value="대두"><label for="cb14"></label>대두
					<input type="checkbox" id="cb15" name="food" value="복숭아"><label for="cb15"></label>복숭아
					<input type="checkbox" id="cb16" name="food" value="토마토"><label for="cb16"></label>토마토
					<input type="checkbox" id="cb17" name="food" value="밀"><label for="cb17"></label>밀
					<input type="checkbox" id="cb18" name="food" value="메밀"><label for="cb18"></label>메밀
					<input type="checkbox" id="cb19" name="food" value="아황산류"><label for="cb19"></label>아황산류
				</div>
		      <div class="popupBtn">
			      <button type="submit" id="nosaveBtn" style='cursor: pointer;'>저장하지 않고 돌아가기</button>
			      <button type="submit" id="saveBtn" style='cursor: pointer;'>변경 후 저장하기</button>
		      </div>
		     </form>
		      
		      
		      
		  </div>
		</div>
		
		
		<!-- 페이징 번호구역 -->
		<div id="pagination-container">
			<div class="prev-button">이전</div>
			<div class="number-button-wrapper">
				<span class="number-button">1</span>
			</div>
			<div class="next-button">이후</div>
		</div>
		
		
		
		
		
		
		
		<script type="text/javascript">
	// 검색기능 
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
			success : pagination,
			error : function() {
				alert("error");
			}
		});
	}
	
	// 페이징 기능 
	let currentPage=1; // 초기 페이지 번호
	let nextButton = document.querySelector('.next-button'); // 이후 페이지 버튼	
	let getTotalPageCount; // 필요한 페이지 번호 개수
	let numberButtonWrapper = document.querySelector('.number-button-wrapper'); // 페이지네이션 버튼 wrapper

	// 페이지 나열
	function pagination(data){
		

		// 필요한 페이지 번호 수에 맞게 페이지 버튼 구성하기
		const COUNT_PER_PAGE = 8; // 페이지 당 보여줄 게시물 수
		let length = data.length;
		
		
		var html = "";

		console.log(currentPage);
		
		for(let i = COUNT_PER_PAGE * (currentPage - 1) + 1; i <= COUNT_PER_PAGE * (currentPage - 1) + COUNT_PER_PAGE && i <= length; i++){
			html += "<div class='innerproBox innerproBox"+((i%COUNT_PER_PAGE)+1)+"'>";
			html += "<a href='productService.do?num="+data[i-1].pro_code+"'>";
			html += "<div class='product'>"
			html += "<div class='textImg'><img class= 'innertextImg' src='"+ "'></div>";
			html += "<div class='Info'>";
			html += "<p>알레르기 유발 성분 "+data[i-1].pro_cnt+" 개 포함</p>";
			html += "<p>" + data[i-1].pro_maker + "</p>";
			html += "<p>" + data[i-1].pro_name + "</p>";
			html += "<p>" + data[i-1].pro_price + "원</p></div></div>";
			html += "</a>";
			html += "<div class='fvrbtnBox'>";
			html += "<button type='submit' class='fvrBtn' value='test' style='cursor:pointer;'><span class='material-symbols-outlined'> favorite </span></button>";
			html += "</div>";
			html += "<div class='bskbtnBox'>";
			html += "<button type='submit' class='bskBtn' style='cursor:pointer;'><span class='material-symbols-outlined'>shopping_cart_checkout </span></button>";
			html += "</div>";
			html += "<div class = 'tag'><hr />";			
			html += "<div class='innerTag'>";
			html += "<span>#새우</span> <span>#밀</span>";
			html += "</div>";
			html += "</div>";
			html += "</div>";
			};
			console.log("여기까지 옴?");
			//alert(data);
			$(".productbox").html(html);

			// 필요한 페이지 번호 개수 구하기
			getTotalPageCount = Math.ceil(length/COUNT_PER_PAGE);
						
			numberButtonWrapper.innerHTML = '';
			
			for (let i = 1; i <= getTotalPageCount; i++) {
				numberButtonWrapper.innerHTML += '<span class="number-button"> '+i+' </span>';
			}
			
			// 첫 페이지에 ('selected')클래스넣기
			numberButtonWrapper.firstChild.classList.add('selected');

			pageNumberButtons = document.querySelectorAll(".number-button");
			
			pageNumberButtons.forEach(function(numberButton){
				  numberButton.addEventListener('click', function(){
				    currentPage = numberButton.innerHTML;
					search();
				  })
				});
			
			moveSelectedPageHighlight();
			
			
		}
			
		// 페이지 이동에 따른 css 클래스 적용	
		const moveSelectedPageHighlight = function(){
		  pageNumberButtons.forEach(function(numberButton){
		    // 'selected'클래스 지우기
		    if (numberButton.classList.contains('selected')) {
		      numberButton.classList.remove('selected');
		    }
		  });
		  pageNumberButtons[currentPage - 1].classList.add('selected');
		};

		
		// 페이지 번호 버튼 클릭 리스너
		
		
		/**
		 * 이후 버튼 클릭 리스너
		 */
		nextButton.addEventListener('click', function(){
		  if (currentPage < getTotalPageCount) {
		    currentPage += 1;
		    search();
		    moveSelectedPageHighlight();
		  }
		});
		
		
		// 이전 버튼 클릭 리스너
		const prevButton = document.querySelector('.prev-button'); // 이전 페이지 버튼
		prevButton.addEventListener('click', function(){
		  if (currentPage > 1) {
		    currentPage -= 1;
			search();
		    moveSelectedPageHighlight();
		  }
		})
			// 팝업창 코드
			// 팝업창 구현하기
			$(document).ready(function() {
				$('#editData').click(function() {
					$('#modal').fadeIn();
				});
				$('#nosaveBtn').click(function() {
					$('#modal').hide();
				});
			});
			
			// 체크박스 회원 알레르기 선택해놓기
			var checkbox = document.getElementsByName("allergy");
			let info = "${info.m_allergy}";

			let allergy = info.split(",");
			let plus_allergy = "";
			 
			 for(let i = 0; i<checkbox.length; i++){
				for(let j = 0; j<allergy.length; j++){
					if(checkbox[i].getAttribute("value")==allergy[j]){
						checkbox[i].setAttribute("checked",true);
					}
				}
			 }	 
		</script>
	
</body>
</html>