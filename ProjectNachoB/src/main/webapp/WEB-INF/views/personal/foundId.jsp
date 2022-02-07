<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/headerTest.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

@font-face {
  font-family: testFontEDB;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB{font-family : "testFontEDB", serif;}

@font-face {
  font-family: testFontEDR;
  src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}
.testFontEDR{font-family : "testFontEDR", serif;}


	body{
	/* 	background-color: #F6F0E3; */
	}
	fieldset{
		width : 80%;
		margin : auto;
		height : 310px;
		text-align : center;
	}
	h1{
		margin-top : 0px;
		margin-bottom : 0px;
		
	}
	.login-btn{
		width : 100px;
		height: 45px;
		background-color : #ffd18d;
		font-size : x-large;
		border-radius : 5px;
	}
	#headerSpace{
		width : 100%;
		height : 30px;
		/* background-color : pink; */  /* 헤더부분 공간 확인용 배경색  */
	}
	#move-logo{
		position : relative;
		top : -40px;
		left : 0px;	
	}
	#move-rest{
		position : relative;
		top : -60px;
		left : 0px;
	}
	#fieldset-size{
		width : 70%;
	}
	.space{
		width : 100%;
		height : 102px;
		background-color : pink;
	}
</style>
</head>
<body>
	<br><br>
	<fieldset id="fieldset-size" style="padding: 15px; border: 2px solid #bac8d3;">
		<br><br>
		<div id="move-logo">
			<img src="../../../resources/img/페이지단로고.png">
		</div>
		<div id="move-rest">
			<h2 class="testFontEDB" style="margin-bottom: -10px;">검색 된 아이디입니다.</h2><br>
			<label class="testFontEDR">아이디 : ${gotId }</label><br><br>
			<input class="login-btn testFontEDB" type="button" value="LOGIN" onclick = "location.href='/nachoCustomLogin'">		
		</div>
		<br>		
	</fieldset>
	<br><br>
<%@include file="../include/footerTest.jsp" %>	
</body>
</html>