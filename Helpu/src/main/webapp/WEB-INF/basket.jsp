<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	margin: 0;
	padding: 10px;
	box-sizing: border-box;
}

hr {
	padding: 0px;
}

.basket {
	display: flex;
	justify-content: center;
}

li {
	list-style-type: none;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
	border: 2px solid #d7d7d7;
	margin: 15px;
}

.container>p {
	flex-basis: 70%;
	display: flex;
	align-items: center;
	justify-content: center;
	text-decoration-line: none;
	color: black;
}

.payment-container {
	display: flex;
	align-items: center;
	border-radius: 10px;
	border: 2px solid #d7d7d7;
	margin: 15px;
	justify-content: center;
}

.payment-container>div {
	flex-basis: 70%; 
	align-items: center;
	text-decoration-line: none;
	color: black;
	justify-content: center;
	text-align: center;
}

.purchase_count {
	font-size: 15px;
}

.product_img {
	width: 100px;
	height: 100px;
	font-size: 15px;
	padding: 15px;
}

.product_name {
	font-size: 15px;
	padding: 15px;
}

.payment {
	font-size: 15px;
	padding: 15px;
}

.pagination-container {
	display: flex;
	justify-content: center;
}

.buyNow {
	font-size: 15px;
	padding: 15px;
}

#btn1 {
	width: 90px;
	background-color: white;
	margin: 5px;
}

#btn2 {
	width: 90px;
	background-color: white;
	margin: 5px;
}

#btn3{
background-color: white;
	width: 200px;
	font-size: 20px;
	color: red;
	border-color: red;
}

#btn4{
background-color: red;
	width: 200px;
	font-size: 20px;
	color: white;
	border: none;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="post">
		<div class="basket">
			<h2>장바구니</h2>

		</div>
		<h4>전체선택(n/n) | 선택삭제</h4>
		<hr>

		<!-- 장바구니 리스트 -->
		<ul>
			<li>
				<div class="container">
					<p>
						<input type="checkbox" name="select" value="select">
					</p>
					<img class="product_img" src="" alt="제품이미지">
					<p class="product_name">제품이름</p>
					<p class="purchase_count">숫자</p>
					<p class="payment">금액</p>
					<div class="buyNow">
						<p>
							<button id="btn1">바로 구매</button>
							<script src=""></script>
							<br>
							<button id="btn2">즐겨찾기</button>
							<script src=""></script>
						</p>
					</div>
				</div> 
				
				<!-- 결제 예정 금액 -->
				<div class="payment-container">

					<div class="pa">
						<span>상품 금액</span>
						<div>
							<p class="won1">원</p>
						</div>
					</div>
					+
					<div class="delivery">
						<span>배송비</span>
						<div>
							<p class="won2">원</p>
						</div>
					</div>
					=
					<div class="total">
						<span>결제 예정 금액</span>
						<div>
							<p class="won3">원</p>
						</div>
					</div>
				</div>
			</li>
		</ul>






		<!-- 선택 상품 결제, 전체 상품 결제 -->
		<div class="pagination-container">
			<span>
				<button id="btn3">선택 상품 결제</button> <script src=""></script>
			</span> <span>
				<button id="btn4">전체 상품 결제</button> <script src=""></script>
			</span>
		</div>
	</form>
</body>
</html>