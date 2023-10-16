<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/basket.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
					<p>${info.id}님환영합니다!</p>
				</div>
				<!-- 로고 및 검색창 -->
				<div id="schBox">
					<!-- 로고 -->
					<img alt="로고" src="imgs/logo.png">
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

		<div class="bskWrap">
			<div class="basket">
				<h2>장바구니</h2>

			</div>
			<!-- 전체 선택 및 해제 기능 -->
			<input type='checkbox' name='select' value='selectall'
				onclick='selectAll()' /> <b>전체선택/해제</b>

			<hr>

			<!-- 장바구니 리스트 -->
			<form action="#" method="post">
				<c:forEach var="clist" items="${clist}">
					<div class="container">
						<p class="proInfo proCheckbox">
							<input class="select_asd" type="checkbox" name="select"
								value="select">
						</p>
						<img class="productImg" src="${clist.pro_img}" alt="제품이미지">

						<p class="proInfo productName">
						<p id="proName">${clist.pro_name}</p>

						<div class="proInfo cntbox">
							<button type="button" class="minus"
								onclick="updateQuantity('${clist.pro_code}', -1, ${clist.pro_price})">-</button>
							<span id="quantity_${clist.pro_code}">${clist.su}</span>
							<button type="button" class="plus"
								onclick="updateQuantity('${clist.pro_code}', 1, ${clist.pro_price})">+</button>
						</div>
						<p class="proInfo payment">
							<span id="price_${clist.pro_code}">${clist.pro_price * clist.su}원</span>
						</p>
						<p class="proDelete">
							<button type="button"
								onclick="deleteCartItem('${clist.id}', ${clist.pro_code})">삭제</button>
						</p>


					</div>
				</c:forEach>

				<script>				
				 $(document).ready(function() {
					 console.log("바로 시작");
				        $('input[name="select"]').change(function () {
				            calculateTotalPrice();
				            updateFinalPrice();
				        });
				    });
    var userId = "${info.id}";
	//var productCode = "${p_dao.pro_code}"
	//var price = "${p_dao.price}"
    function updateQuantity(productCode, amount, price) {
        // 현재 수량 가져오기
        var currentQuantity = parseInt($('#quantity_' + productCode).text());

        // 변경된 수량 계산
        var newQuantity = currentQuantity + amount;

        // 최소 수량이 1로 제한되도록 설정
        if (newQuantity < 1) {
            newQuantity = 1;
        }

        // HTML 업데이트
        $('#quantity_' + productCode).text(newQuantity);

        // 가격 업데이트
        var newPrice = price * newQuantity;
        $('#price_' + productCode).text(newPrice + '원');

        // 서버에 업데이트 요청 보내기
        $.ajax({
            type: "POST",
            url: "updateProductQuantity.do",
            data: {
                productCode: productCode,
                su: newQuantity,
                id: userId
            },
            success: function (response) {
                // 성공적으로 업데이트되었을 때 수행할 작업
                console.log("성공!");
            },
            error: function (xhr, status, error) {
                // 실패했을 때 수행할 작업
                console.log("실패..");
            }
        });
    }

    
    
    function calculateTotalPrice() {
        var total = 0;
        $("input[name='select']:checked").each(function () {

            var productCode = $(this).closest('.container').find('.proInfo.cntbox button.plus').attr('onclick').split("'")[1];
            var quantity = parseInt($('#quantity_' + productCode).text());
            var price = parseInt($('#price_' + productCode).text());
            total += price;
        });

        $('#totalProductPrice').text(total + '원');
    }
    

   
    
    function updateFinalPrice() {
        var totalProductPrice = parseInt($('#totalProductPrice').text());
        var finalPrice = totalProductPrice + 3000;
        $('#updateFinalPrice').text(finalPrice + '원');
    }
    
    function deleteCartItem(id, productCode) {
        $.ajax({
            type: "POST",
            url: "deleteCartItem.do",
            data: {
                id: id,
                productCode: productCode
            },
            success: function (response) {
                 
                    console.log("상품이 성공적으로 삭제되었습니다.");           
                    $('#product_' + productCode).remove(); 
                    
            error: console.log("상품 삭제에 실패했습니다."); 
            }                 
        });
    }
	 
		
	    function requestPay() {
			
		var IMP = window.IMP;
		IMP.init("imp07245851"); 
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "ORD20180131-0000011",
	          name: "asd",
	          amount: 100,
	          buyer_name: "er",
	          buyer_tel: "010-4242-4242",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01181"
	      });
	    }
	  
				</script>

				<!-- 결제 예정 금액 -->


				<div class="payment-container">
					<div class="pa">
						<span>상품 금액</span>
						<div>
							<p id="totalProductPrice" class="won1"></p>
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
							<p id="updateFinalPrice" class="won3"></p>
						</div>
					</div>
				</div>






			</form>
			<!-- 선택 상품 결제, 전체 상품 결제 -->
			<div class="pagination-container">


				<button id="btn3" style='cursor: pointer;'>선택 상품 결제</button>


				<button onclick="requestPay()" id="btn4" style='cursor: pointer;'>전체
					상품 결제</button>

			</div>
		</div>

	</div>



</body>
</html>