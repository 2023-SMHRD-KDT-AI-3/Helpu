<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
       	<link rel="stylesheet" href="css/login.css">
    </head>

    <body>
        <form action="LoginService.do" method="post">
            <div class = "loginBox">
                <img src="./imgs/logo.png" alt="로고">
                	<div class = "dataBox">
		                <p>아이디</p>
		                <input type="text" name="id" onfocus="this.value='';" value="아이디를 입력해주세요.">
		                <p>비밀번호</p>
		                <input type="password" name="pw" onfocus="this.value='';" value="123456789"><br>
		               	<input type="submit" value="로그인">
               		</div>
            </div>
        </form>
    </body>

    </html>