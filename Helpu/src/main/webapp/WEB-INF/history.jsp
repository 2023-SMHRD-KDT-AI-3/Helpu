<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
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

	<div class="history">

		<h2>구매내역</h2>

	</div>

		<ul>
			<c:forEach var="olist" items="${olist}" varStatus="status">	
			<li>
				<div class="post-container">	
					<!-- 임시 이미지 영역 -->		
					<div>
						<img class="product_img" src="${olist.pro_img}">
					</div>

					<div class="product_name">
						<a href="#">${olist.pro_name}</a>
						<p>${olist.pro_price} 원</p>
					</div>


					<div class="post-title purchase_date">${olist.order_at}</div>

					<div class="payment">${olist.od_cnt}<span>개</span></div>

					<!-- 재구매,리뷰작성 버튼 -->
					<div class=reviewContainer>
						<a href="productService.do?num=${olist.pro_code}"><button class="reviewBtn">리뷰작성</button></a>
					</div>
					
					<!-- 구매내역 삭제 -->
					<button class="close"><span class="material-symbols-outlined">close</span></button>
					
				</div>
			</li>
			</c:forEach>
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
		
		<button id="btn9"> <span class="material-symbols-outlined">chevron_right</span> </button>
		<a href="#"></a>
	</div>
	
	
	
	
<script type="text/javascript">
const data = "${olist}";
console.log(data[0]);

const COUNT_PER_PAGE = 3; // 페이지 당 보여줄 게시물 수
const numberButtonWrapper = document.querySelector('.number-button-wrapper'); // 페이지네이션 버튼 wrapper
const ul = document.querySelector('ul'); // 게시물을 담을 unordered list
const prevButton = document.querySelector('.prev-button'); // 이전 페이지 버튼
const nextButton = document.querySelector('.next-button'); // 이후 페이지 버튼

let pageNumberButtons; // 페이지 버튼들

let currentPage = 1; // 초기 페이지 번호

// 필요한 페이지 번호 개수 구하기
const getTotalPageCount = function(){
  // Math.ceil() → 소수점 올림함수
  return Math.ceil(data.length/COUNT_PER_PAGE);
};

// 필요한 페이지 번호 수에 맞게 페이지 버튼 구성하기
const setPageButtons = function(){
  numberButtonWrapper.innerHTML = '';

  for (let i = 1; i <= getTotalPageCount(); i++) {
    numberButtonWrapper.innerHTML += `<span class="number-button"> ${i} </span>`;
  }
  // 첫 페이지에 ('selected')클래스넣기
  numberButtonWrapper.firstChild.classList.add('selected');
  
  pageNumberButtons = document.querySelectorAll('.number-button');
};

/**
 * 페이지에 해당하는 게시물 ul에 넣어주기
 * @param {number} pageNumber - 이동할 페이지 번호
 */
const setPageOf = function(pageNumber){
  ul.innerHTML = '';

  for (
    let i = COUNT_PER_PAGE * (pageNumber - 1) + 1; i <= COUNT_PER_PAGE * (pageNumber - 1) + 3 && i <= data.length; i++) {
    const li = document.createElement('li');
	
	const container = document.createElement('div');
	container.className='post-container';
    
    // 컨테이너
    const imgContainer = document.createElement('div');

    // 이미지
    const productImg = document.createElement('img');
    productImg.className = 'product_img';

	// 제품 이름 div
	const product_name_div = document.createElement('div');
    product_name_div.className = 'product_name';
    
    // 제품이름
    const pro_name = document.createElement('a');
    
    // 제품가격
    const pro_price = document.createElement('p');

    // 구매일자 div
    const date_div = document.createElement('div');
    date_div.className = 'post-title purchase_date';

    // 구매 갯수 div
    const cnt_div = document.createElement('div');
    cnt_div.className = 'payment';

	// 리뷰작성 버튼
	const review_div = document.createElement('div');
	review_div.className='reviewContainer';
    
    // 리뷰 버튼
    const review_btn = document.createElement('button');
    review_btn.className='reviewBtn';
    
    // 구매내역 삭제버튼
   	const close_button = document.createElement('button');
   	close_button.className='close';
   	
   	// 구매버튼 내 span태그
   	const close_span = document.createElement('span');
   	close_span.className='material-symbols-outlined'
    
    // 값 집어넣기
    productImg.setAttribute('src',data[i - 1].pro_img); 
    pro_name.textContent = data[i - 1].pro_name;
    pro_price.textContent = data[i - 1].pro_price;
    date_div.textContent = data[i - 1].order_at;
    cnt_div.textContent=data[i-1].od_cnt;
    review_btn.textContent="리뷰작성"
    review_btn.setAttribute('onclick',"location.href='productServie.do?num="+data[i-1].pro_code+"'");
    
    imgContainer.append(productImg);
    product_name_div.append(pro_name,pro_price);
    review_div.append(review_btn);
    close_button.append(close_span);
    container.append(imgContainer,product_name_div,date_div,cnt_div,review_div,close_button);
    li.append(container);
    ul.append(li);
  }
};

// 페이지 이동에 따른 css 클래스 적용
const moveSelectedPageHighlight = function(){
  const pageNumberButtons = document.querySelectorAll('.number-button'); // 페이지 버튼들

  pageNumberButtons.forEach(function(numberButton){
    // 'selected'클래스 지우기
    if (numberButton.classList.contains('selected')) {
      numberButton.classList.remove('selected');
    }
  });

  pageNumberButtons[currentPage - 1].classList.add('selected');
};

setPageButtons();
setPageOf(currentPage);

// 페이지 번호 버튼 클릭 리스너
pageNumberButtons.forEach(function(numberButton){
  numberButton.addEventListener('click', function(e){
    currentPage = e.target.innerHTML;
    console.log(currentPage);
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  })
});

// 이전 버튼 클릭 리스너
prevButton.addEventListener('click', function(){
  if (currentPage > 1) {
    currentPage -= 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});

/**
 * 이후 버튼 클릭 리스너
 */
nextButton.addEventListener('click', function(){
  if (currentPage < getTotalPageCount()) {
    currentPage += 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});

</script>
</html>