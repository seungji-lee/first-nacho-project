<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
		width : 125px;
		height: 65px;
		background-color : #ffd18d;
		border-radius : 15px;
	}
</style>
</head>
<body>
	<h1>foundPw, 비밀번호를 찾은 페이지입니다.</h1>
	<br><hr><br>
	<fieldset>
		<div><img src="../../../resources/img/나쵸.png"></div>
		<h1>검색된 비밀번호입니다. :)</h1><br>
		<label>비밀번호 : pw01</label><br><br>
		<label>정보를 이메일로 받는 걸 알아보자</label>
		<input class="login-btn" type="button" value="LOGIN" onclick = "location.href='nachoCustomLogin'">
		<br>
			
	</fieldset>
</body>
