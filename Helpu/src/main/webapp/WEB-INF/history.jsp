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

li {
	list-style-type: none;
}

.post-container {
	display: flex;
	align-items: center;
	border-radius: 10px;
	border: 2px solid #d7d7d7;
	margin: 15px;
}

.purchase_date {
	text-align: center;
	flex-basis: 20%;
	font-size: 15px;
	padding: 15px;
}

.product_img {
	flex-basis: 20%;
	width: 50px;
}

.product_name {
	flex-basis: 20%;
	font-size: 15px;
	padding: 15px;
}

.payment {
	text-align: center;
	flex-basis: 20%;
	font-size: 15px;
	padding: 15px;
}

.pagination-container {
	flex-basis: 20%;
	display: flex;
	justify-content: center;
}

.rePurchase {
	font-size: 15px;
	padding: 15px;
}

.reviewContainer {
	display: flex;
	flex-basis: 20%;
	flex-direction: column;
	align-items: center;
	height: 150px;
}

.reviewBtn {
	flex-basis: 50%;
	width: 100px;
	justify-content: center;
	margin: 3%;
}

.repurchaseBtn {
	flex-basis: 50%;
	width: 100px;
	justify-content: center;
	margin: 3%;
}

.selected {
	font-size: 25px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<a>로그아웃</a> <a>마이페이지</a> <a>장바구니</a>
	</p>

	<p>ooo님 환영합니다!</p>
	<h2>구매내역</h2>
	<ul>
		<li>
			<div class="post-container">
				<button class="close">x</button>
				<img class="product_img" src="#">
				<p class="product_name">제품이름</p>
				<p class="post-title purchase_date">구매일자</p>
				<p class="payment">결제방법</p>
				<div class=reviewContainer>
					<button class="repurchaseBtn">재구매</button>
					<br>
					<button class="reviewBtn">리뷰작성</button>
				</div>
			</div>
		</li>
	</ul>
	<div class="pagination-container">
		<div class="prev-button">이전</div>
		<div class="number-button-wrapper">
			<span class="number-button">1</span>
		</div>
		<div class="next-button">이후</div>
	</div>
	<script src="pagination.js"></script>
</body>
</html>