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
  font-size: 20px;
}

.product_img {
  width: 100px;
  height: 100px;
  font-size: 15px;
  padding: 15px;
}

.product_name{
  font-size: 15px;
  padding: 15px;
}

.payment{
  font-size: 15px;
  padding: 15px;
}

.pagination-container {
  display: flex;
  justify-content: center;
}

.rePurchase{
  font-size: 15px;
  padding: 15px;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<a>로그아웃</a>
		<a>마이페이지</a>
		<a>장바구니</a>
	</p>
	
	<p>ooo님 환영합니다!</p>
  <ul>
    <li>
      <div class="post-container">
        <img class="product_img" src="../../../../../이미지/쿡베이스105.jpg" alt="제품이미지">
        <p class="product_name">제품이름</p>
        <p class="post-title purchase_date">구매일자</p>
        <p class="payment">결제방법</p>
        <div class="rePurchase review">재구매/리뷰작성</div>
      </div>
    </li>
  </ul>
  <div class="pagination-container">
    <div class="prev-button">이전</div>
    <div class="number-button-wrapper"><span class="number-button">1</span></div>
    <div class="next-button">이후</div>
  </div>
  <script src="pagination.js"></script>
</body>
</html>