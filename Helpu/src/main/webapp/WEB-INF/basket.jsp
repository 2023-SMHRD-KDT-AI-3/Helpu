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

		<div id = container class="bskWrap">
			<div class="basket">
				<h2>장바구니</h2>

			</div>
			<!-- 전체 선택 및 해제 기능 -->
			<input type='checkbox' name='select' value='selectall'
				onclick='selectAll()' /> <b>전체선택/해제</b>

			<hr>

			<!-- 장바구니 리스트 -->
			<form action="#" method="post">			 
				<c:forEach var="clist" items="${clist}" varStatus="status">				   
				    <input type="hidden" id="productCode${status.index+1}" value="${clist.pro_code}"/>
			        <input type="hidden" id="quantity${status.index+1}" value="${clist.su}"/>
			        <input type="hidden" id="price${status.index+1}" value="${clist.pro_price * clist.su}"/>
			        <input type="hidden" class="pro_code" value="${clist.pro_code}"/>
			        
					<div class="container">
						<p class="proInfo${clist.pro_code} proCheckbox">
							<input class="select_asd" type="checkbox" name="select"
								value="select">
						</p>
						<img class="productImg" src="${clist.pro_img}" alt="제품이미지">

						<p class="proInfo productName"></p>
						<p class="proName">${clist.pro_name}</p>

						<div class="proInfo cntbox">
							<button type="button" class="minus"
								onclick="updateQuantity('${clist.pro_code}', -1, ${clist.pro_price})">-</button>
								
							<span id="quantity_${clist.pro_code}" class="su">${clist.su}</span>
							
							<button type="button" class="plus"
								onclick="updateQuantity('${clist.pro_code}', 1, ${clist.pro_price})">+</button>
						</div>
						<p class="proInfo payment_${clist.pro_code}">
							<span class="price_${clist.pro_code}">${clist.pro_price * clist.su}</span><span>원</span>
						</p>
						<p class="proDelete">
							<button type="button"
								onclick="deleteCartItem('${clist.id}', '${clist.pro_code}')">삭제</button>
						</p>


					</div>
				</c:forEach>



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
							<p id="updateFinalPrice" class="won3"></p><p>원</p>
						</div>
					</div>
				</div>
			</form>
			<!-- 선택 상품 결제, 전체 상품 결제 -->
			<div class="pagination-container">


				<button id="btn3" style='cursor: pointer;'>선택 상품 결제</button>



				<button onclick="requestPay();" id="btn4" style='cursor: pointer;'>전체 상품 결제</button>
			</div>
		</div>

	</div>

	<script>
	 	
	// 바로 실행이 되는 코드
	$(document).ready(function() {
			console.log("바로 시작");
			var checkboxes = document.getElementsByName('select'); // 5
		    var selectAllCheckbox = checkboxes[0]; // 전체선택
		    selectAllCheckbox.checked=true;
		   	var totalprice=0;
	     	for (var i = 1; i < checkboxes.length; i++) { // 5번회전(0~4)
	           checkboxes[i].checked = selectAllCheckbox.checked; // 1,2,3,4
	       }
	     	calculateTotalPrice();
            updateFinalPrice();
	     	
	});
	
	// 체크박스 변동이 있을 때마다 함수 실행
	$('input[name="select"]').change(function () {
            calculateTotalPrice();
            updateFinalPrice();
    });
	
	
	
  	var userId = "${info.id}";
  	
	// 수량 수정하기
    function updateQuantity(productCode, amount, price) {
        // 현재 수량 가져오기
        var currentQuantity = parseInt($('#quantity_' + productCode).text());
        console.log(currentQuantity);

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
        $(".price_"+ productCode).text(newPrice);

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
        		calculateTotalPrice();
        		updateFinalPrice();
            },
            error: function (xhr, status, error) {
                // 실패했을 때 수행할 작업
                console.log("실패..");
            }
        });
        
    }

    
    // 전체금액 수정
    function calculateTotalPrice() {
    	
        var total = 0;
        $("input[name='select']:checked").each(function () {        	 
            index = $('input:checkbox[name=select]').index(this);          
            if(index!=0) {
             var productCode = $("#productCode"+index)[0].value;
             console.log("제품코드"+productCode);
             var quantity = parseInt($("#quantity"+index).val());
             var price = ($(".price_"+productCode).text());
             console.log(price);
             total += (price*quantity);
            }
        });
		$('#totalProductPrice').text(total);
        console.log("전체금액 갱신 완료");
        
    }
     
    // 최종금액 갱신
    function updateFinalPrice() {
        var totalProductPrice = parseInt($('#totalProductPrice').text());
        var finalPrice = totalProductPrice + 3000;
        $('#updateFinalPrice').text(finalPrice);
       	console.log("갱신 완료");
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
                location.reload();
            },    
            error: function() {
                console.log("상품 삭제에 실패했습니다.");
            }
        });
    }
    
    function selectAll() {
        var checkboxes = document.getElementsByName('select'); // 5
        var selectAllCheckbox = checkboxes[0]; // 전체선택
        var totalprice=0;
        for (var i = 1; i < checkboxes.length; i++) { // 5번회전(0~4)
            checkboxes[i].checked = selectAllCheckbox.checked; // 1,2,3,4
        }
       
    }   
		
      function requestPay() {
      	pro_name = document.getElementsByClassName("proName");
      	pro_name1 = pro_name[0].innerHTML;
  		pro_code = document.getElementsByClassName("pro_code");
  		pro_codes = "";
  		pro_su = document.getElementsByClassName("su");
  		pro_sus = "";
      	for(let i = 0; i<pro_name.length; i++){
  			pro_codes += pro_code[i].value+",";
  			pro_sus += pro_su[i].innerHTML+",";
  		}
  		
  		
      	
      	final_price = document.getElementById("updateFinalPrice").innerText;

          //가맹점 식별코드
          IMP.init('imp07245851');
          IMP.request_pay({
             pg : "html5_inicis",
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : pro_name1, //결제창에서 보여질 이름
             amount : 100//final_price, //실제 결제되는 가격
          }, function(rsp) {
             console.log(rsp);
             if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;

                $.ajax({
  				url : "historyService.do",
  				type : "post",
  				data : {
  					"payment" : rsp.paid_amount,
  					"pro_codes" : pro_codes,
  					"pro_sus" : pro_sus,
  				},
  				success : function(){
  					alert("성공");
  					let container_HTML="";
  					let container = document.getElementById("container");
  					container_HTML+="<h4> 결제 완료</h4>";
  					container_HTML+="<a href='gohistory.do'> 구매내역페이지로 이동</a>"

  					container.innerHTML=container_HTML;
  					
  				},
  				error : function() {
  					alert("error");
  				}
  			});
                
             } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
             }
             alert(msg);
          });
       }
	  
</script>


</body>
</html>