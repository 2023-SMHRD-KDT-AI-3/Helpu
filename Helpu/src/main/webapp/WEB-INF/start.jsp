<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/start.css">
</head>
<body>
	
	<!-- 메인 컨텐츠 영역 -->
	<div class="container">
		<img src="./imgs/logo.png" alt="logo">
		<h2>안전한 먹거리</h2>
		<h2>한 번의 검색으로</h2>
		<h2>
			손쉽게 <span>Check In!</span>
		</h2>
		<div class="mainBtn">
			<a href="gologin.do"><p class="loginBtn">로그인</p></a> 
			<a href="gojoin.do"><p class="joinBtn">회원가입</p></a>
		</div>
	</div>

	<!-- 화이트 배경 영역 -->
	<div class="whiteBack"></div>
	<!-- 이미지 슬라이드 영역 -->
	<span class="slideshow-container">
		<div class="Slidesbackground">
			<div class="mySlides fade slideimage1"></div>
			<div class="mySlides fade slideimage2"></div>
			<div class="mySlides fade slideimage3"></div>
			<div class="mySlides fade slideimage4"></div>
	</span>
	
	<!-- 이미지 슬라이드 js 영역 -->
	<script>
	 
	 /* 슬라이드 효과 js */
	 
	 var slideIndex = 0;
	    showSlides();

	    function showSlides() {
	        var i;
	        var slides = document.getElementsByClassName("mySlides");
	       
	        for (i = 0; i < slides.length; i++) {
	            slides[i].style.display = "none";
	        }
	        slideIndex++;
	        if (slideIndex > slides.length) {
	            slideIndex = 1
	        }
	        slides[slideIndex - 1].style.display = "block";
	    
	        setTimeout(showSlides, 2000); // 2초마다 이미지가 체인지됩니다
	    }
	    
	</script>
</body>
</html>