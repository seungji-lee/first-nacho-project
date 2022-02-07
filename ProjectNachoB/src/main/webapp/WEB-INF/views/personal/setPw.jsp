<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../include/headerTest.jsp" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--         <link href="../../resources/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
		<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    Link Swiper's CSS
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    /> -->
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<script type="text/javascript">
	window.onload = function(){
		if(${result eq 0}){
			alert("오류 다시 입력해주세요");
		}
		/* 새로고침으로 아이디가 사라졌을 때 아이디&비밀번호 찾기로 이동 */
		var mid = $("#mid").val();
		/* if(mid == ""){
			alert("올바른 입력이 아닙니다.");
			location.href="/personal/findIdPw";
		} */ 										// css 고칠동안 잠깐 주석, 없애면 새로고침시 myPage로 이동
	}
	// 이름 정규식
	function confirmName(){
		var regName = /^[가-힣]{2,8}$/;	// 한글 이름 2~8글자 사이
		var name = document.forms.myForm.mname.value;
		var nameWarning = document.getElementById("nameWarning");
		if(!regName.exec(name)){
			nameWarning.innerHTML = "이름 한글 2~8글자 ";
			nameWarning.style.color = "red";
		}else{
			nameWarning.innerHTML = "멋진 이름이네요 ";
			nameWarning.style.color = "blue";
		}
	}
	
	function checkPw(){
		// 비밀번호 정규식
		var regPw = /^[0-9a-zA-Z]{8,16}$/;
		var pw = document.forms.myForm.mpw.value;
		var pwWarning = document.getElementById("pwWarning");
		if(!regPw.exec(pw)){
			pwWarning.innerHTML = "8~16자 영문 대 소문자,숫자를 사용하세요.";
			pwWarning.style.color = "red";
		}else{
			pwWarning.innerHTML = "훌륭한 비밀번호네요";				
			pwWarning.style.color = "blue";
		}
	}
	
	// 비밀번호 확인 정규식
	function showChPw(){
		var regPw = /^[0-9a-zA-Z]{8,16}$/;
		var pw = document.forms.myForm.mpw.value;
		var chPw = document.forms.myForm.mchpw.value;
		var target = document.getElementById("chPwWarning");
		if(pw!=chPw){
			target.innerHTML = "비밀번호가 일치하지 않습니다.";
			target.style.color = "red";
		}else if(regPw.exec(pw)){
			target.innerHTML = "비밀번호 동일";				
			target.style.color = "blue";
		}
	}

	// * 전송버튼 (폼들이 조건에 맞는지 체크)
	function submitWithNeeds(f){
		var regPw = /^[0-9a-zA-Z]{8,16}$/; // 비밀번호 숫자,소문자,대문자를 이용 8~16글자
		var writtenPw = $("#mpw").val();
		var writtenChPw = $("#mchpw").val();
		if(!regPw.exec(writtenPw)){
			alert("비밀번호를 숫자,소문자,대문자를 이용해서 8~16글자로 적어주세요.");
		}else if(writtenPw != writtenChPw){
			alert("비밀번호 확인이 일치하지 않습니다.");
		}else{
			f.action = "/personal/setPw";
			f.submit();	
		}
		
	}
	
		// 취소하면 main으로 이동
		function moveToMain(){
			location.href = "/project/main";		
		}
		
	
		
	
	
</script>
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

       html,
      body {
        position: relative;
        height: 100%;
      } 

      body {
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }
		.testhead{
		padding: 20px;
		top: 0px;
		left: 0px;
		width: 100%;
		border: 1px black solid;
		background-color: #F5E797;
		color: black;
		position: fixed;
		/* padding: 10px 0; */
		z-index: 1000;
	}
		.blank{
		float: left;
		width: 340px;
		
	}
		.blank2{
		float: left;
		width: 250px;
	}
	ul{
		padding: 0;
	}
	.testhead ul li{
		list-style: none;
		text-align: center;
		width: 100px;
		float: left;
		margin: auto;
		color: black;
		font-size: 18px;
	}
	.testhead ul li a{
		text-decoration: none;
		color: black;
	}
	#space_header{
		height : 30px;
		/* background-color : red; */
	}
	/* form 스타일 start*/
		.total-table{
		width : 70%;
		margin : auto;
		background-color : #f8f8f8;
		height: 250px;
	}
	h4{
		margin : auto;
		display : inline-block;
	}
	regExpln{
		width: 30%;
		margin : auto;
	}
	.firstCol{
		width: 190px;
		text-align: center; 
   		background-color: #F5E797; 
   		padding: 5px;
	}
	.pnumSize{
		width: 30px;
	}
	.yearSize{
		width : 30px;
	}
	.monthDaySize{
		width : 15px;	
	}
	.zipcodeSize{
		width : 50px;
	}
	.addrSize{
		width: 280px;
	}
	.buttonCenter{
		width : 50%;
		margin : auto;
		position : relative;
		top : -10px;
		left : -72px;
	}
	  table, tr, td{
		border-collapse:collapse;
	}
	.midTd{
		width: 630px;
	}
	/* form스타일 end */
	#center{
		width : 675px;
		margin : auto;
	}
	.footer{
		text-align: center;
	}

	.move-table{
		position : relative;
		top : 20px;
		left : 95px;
	}
	#move-id{
		position : relative;
		top: 8px;
		left : 10px;
	}
	#move-pw{
		position : relative;
		top: 8px;
		left : 10px;
	}
	#move-chpw{
		position : relative;
		top: 8px;
		left : 10px;
	}
	.btm-send{
		width :100px;
	}
	.space{
		width : 100%;
		height : 102px;
		/* background-color : pink; */
	}
</style>
</head>
<body id="page-top">
	<div id="center">
		
		<div style="text-align: center;">
			<img src="../../../resources/img/페이지단로고.png">
		</div>
			<label class="testFontEDB" style="margin-left: 270px; font-size: x-large;">비밀번호 변경</label>		
		<div class="total-table">
			<div class="move-table">
				<form method="post" name="myForm">
					<table>
						<tr>
							<td class="firstCol testFontEDB">아이디</td>
							<td class="midTd" id="move-id">
								&nbsp;&nbsp;
								<input type="text" name="mid" id="mid" class="input_id testFontEDR" value="${mid }">
								<br>
								&nbsp;&nbsp;				
							</td>
						</tr>
						<tr>
							<td class="firstCol testFontEDB">새비밀번호</td>
							<td class="midTd "  id="move-pw">
								&nbsp;&nbsp;
								<input type="password" class="testFontEDR" id="mpw" name="mpw" onchange="checkPw();">
								<br>
								&nbsp;&nbsp;
								<span class="testFontEDR" id="pwWarning">비밀번호를 입력해주세요.</span>
							</td>
						</tr>
						<tr>
							<td class="firstCol testFontEDB">비밀번호 확인</td>
							<td class="midTd"  id="move-chpw">
								&nbsp;&nbsp;
								<input type="password" class="testFontEDR" id="mchpw" name="mchpw" onchange = "showChPw();">
								<br>
								&nbsp;&nbsp;
								<span class="testFontEDR" id="chPwWarning">비밀번호 확인</span>
							</td>
						</tr>
					</table>
					<br><br>
					<div class="buttonCenter">
						<input class="btm-send testFontEDR" type="button" id="reg_submit" value="등록" onclick = "submitWithNeeds(this.form);">
						<input class="btm-send testFontEDR" type="reset" value="취소" onclick="moveToMain();">
					</div>
				</form>
			</div>
		</div>
	</div>
	<br><br><br>

	<%@include file="../include/footerTest.jsp" %>

</body>
</html>