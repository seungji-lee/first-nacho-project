<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
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

	.pInfoHeader{
		width : 50%;
		background-color : #f8f8f8;
		margin : auto;
		text-align : center;
		border-top : 1px solid black;
	}
	.pInfoBody{
		width  : 50%;
		height : 245px;
		background-color : #F8F8F8;
		margin : auto;
		text-align : center;
	/* 	border-top : 1px solid black; */
	}
	.btn-pw{
		width : 300px;
		height : 30px;
		margin-top: 10px;
		margin-bottom: -10px;
	}
	.btn-send{
		width : 140px;
		height : 30px;
		margin-top: -10px;
	}

</style>
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<script type="text/javascript">
	window.onload = function(){
		if(${result eq 0}){
			alert("비밀번호가 올바르지 않습니다. 다시 입력해주세요");
		}
	}
</script>
</head>
<body>
<!-- 	<div class="space"></div>
	<div class="pInfoHeader">
		<img src="../../../resources/logo/111로고.png">
	</div> -->
	<div class="pInfoBody">
		<form method="post" action="/personal/confirmPw">
		<br>
			<label class="testFontEDB" style="font-size: x-large;">비밀번호 확인</label>
			 <div class="changeInfoPhoto">
				<img style="margin-top: -50px; margin-left: 15px; width: 180px;" 
						src="../resources/img/선1.png" />
			</div>
			<br>
			<input class="btn-pw"type="password" name = "mchpw" placeholder="비밀번호를 입력해주세요.">
			<!-- #$%#$%#%# 시간이 지나서 session이 사라지면 인식을 못한다고 500에러가 뜬다. 해결 필요-->
			<input type="hidden" name="mid" value="<sec:authentication property="principal.member.mid"/>">
			<br><br><br>
			<input class="btn-send" type="submit" value="확인"> &nbsp;
			<input class="btn-send" type="reset" value="취소">			
			<br><br>
		</form>
	</div>
	<br><br>
	
<%@include file="../include/footerTest.jsp" %>
</body>
</html>