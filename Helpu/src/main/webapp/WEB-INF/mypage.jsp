<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        div {
            width: 200px;
            height: 200px;

            border: 1px solid beige;
        }

        #right {
            position: relative;
            bottom: 203px;
            left: 200px;
        }
    </style>
</head>
<body>
<h2> My Page </h2>
    <h6> 이곳에서 사용자의 정보를 수정할 수 있습니다. </h6>
    <h4> 회원 정보 수정 </h4>
    
    <form action="#" method="post">
        <div id="left">
        <span>아이디</span>
        <br>
        <input type="text" name="id" placeholder="TEST" autofocus>
        <br>
        <span>이름</span>
        <br>
        <input type="text" name="name" placeholder="홍길동" autofocus>
        <br>
        <span>비밀번호</span>
        <br>
        <input type="text" name="pw" placeholder="password" autofocus>
        <br>
        <span>비밀번호 확인</span>
        <br>
        <input type="text" name="check" placeholder="password" autofocus>
        </div>

        

        <div id="right">
            <span>생년월일</span>
            <br>
            <input type="text" name="birth" placeholder="2023/10/05" autofocus>
            <br>

            <span>성별</span>
            <br>
            <span>남자</span>
            <input type="radio" name="gender" value="male">
            <span>여자</span>
            <input type="radio" name="gender" value="female">
            <br>

            <span>연락처</span>
            <br>
            <input type="text" name="number" placeholder="Phone number" autofocus>
            <br>

            <span>주소</span>
            <br>
            <input type="text" name="address" placeholder="Address" autofocus>
        </div>
        

        
    </form>
</body>
</html>