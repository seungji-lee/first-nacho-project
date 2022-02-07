<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/headerTest.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 완료</title>
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
		background-color : ;
	}
	fieldset{
		width : 80%;
		margin : auto;
		height : 310px;
		text-align : center;
		padding: 15px; 
		border: 2px solid #bac8d3;
		margin-top: 25px;
	}
	h1{
		margin-top : 0px;
		margin-bottom : 0px;
		font-size: xx-large;
		margin-top: -20px;
		
	}
	.login-btn{
		width : 100px;
		height: 45px;
		background-color : #ffd18d;
		font-size : x-large;
		border-radius : 5px;
	}

</style>
</head>
<body>
	<fieldset style="">
		<div><img src="../../../resources/img/환영로고.png"></div>
		<h1 class="testFontEDB">${mname} 님 반갑습니다!</h1><br>
		<label class="testFontEDR">나쵸박스에 오신 것을 환영합니다!</label><br><br>
		<input class="login-btn testFontEDB" type="button" value="LOGIN" onclick = "location.href='/nachoCustomLogin'">
		<br>
			
	</fieldset>
	<br><br>
<%@include file="../include/footerTest.jsp" %>
	
</body>
</html>