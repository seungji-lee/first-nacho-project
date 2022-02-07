<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/headerTest.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<script type="text/javascript">
	window.onload = function(){
		
		/* 새로고침으로 아이디가 사라졌을 때 mypage로 이동 */
		var mid = $("#mid").val();
		 if(mid == ""){
			alert("올바른 입력이 아닙니다.");
			location.href="/personal/myPage";
		} 
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
	// 이메일 확인 정규식
	function isValidEmail(){
		var regEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		var emailWarning = document.getElementById("emailWarning");
		var email = document.forms.myForm.memail.value;
		if (regEm.test(email) === true) {
			emailWarning.innerHTML = "올바른 형식의 이메일입니다.";
			emailWarning.style.color ="blue";
	     }else{
			emailWarning.innerHTML = "이메일 형식이 올바르지 않습니다.";			
			emailWarning.style.color ="red";
	     }
	}
	
	
	// * 전송버튼 (폼들이 조건에 맞는지 체크)
	function submitWithNeeds(f){
		var regName = /^[가-힣]{2,8}$/;	// 한글 이름 2~8글자 사이
		var writtenName = $("#mname").val();
		var regPw = /^[0-9a-zA-Z]{8,16}$/; // 비밀번호 숫자,소문자,대문자를 이용 8~16글자
		var writtenPw = $("#mpw").val();
		var writtenChPw = $("#mchpw").val();
		var regEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		var writtenEmail = $("#memail").val();
		var checkBtn_IdCk = $("#isIdConfirmed").text();	// 아이디 확인이 되면 바뀌는 값
		
		if(!regName.exec(writtenName)){
			alert("이름을 한글 2~8글자 사이로 적어주세요.");
		}else if(!regPw.exec(writtenPw)){
			alert("비밀번호를 숫자,소문자,대문자를 이용해서 8~16글자로 적어주세요.");
		}else if(writtenPw != writtenChPw){
			alert("비밀번호 확인이 일치하지 않습니다.");
		}else if(!regEm.exec(writtenEmail)){
			alert("이메일 형식이 올바르지 않습니다.");
		}else{
			f.action = "/personal/changeInfo";
			f.submit();			
		}
		
	}
</script>
<style>


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

	.total-table{
		width : 50%;
		height : 330px;
		margin : auto;
		background-color : white;
		text-align : center;
		/* border-top : 1px solid black; */
	}
	.total-title{
		width : 50%;
		margin : auto;
		text-align : center;
	}
	#table-center{
		position : relative;
		top : 5px;
		left : 110px;
	}
	.firstCol{
		width: 110px;
		background-color : #F5E797;
		text-align : center;
		
	}
	table, tr, td{
		border-collapse:collapse;
	}
	#move-name{
		position :relative;
		top: 10px;
		left :-10px;
	}
	#move-id{
		position :relative;
		top: 10px;
		left :-10px;
	}
	#move-pw{
		position :relative;
		top: 10px;
		left :-10px;
	}
	#move-chpw{
		position :relative;
		top: 10px;
		left :-10px;
	}
	#move-email{
		position :relative;
		top: 10px;
		left :-10px;
	}
	#move-titleWords{
		position: relative;
		top: -25px;
		left : 0px;
	}
	.btn-send{
		width: 70px;
		height: 30px;
	}
	#move-img-title{
		position: relative;
		top : -15px;
		background-color : white;
	}
	
	.changeInfoPhoto{
		text-align: center;
		margin: 0px;
		padding: 0px;
	}
	
	table{
		margin-left: 80px; 
		margin-right: auto;

	}
	._td1{
		width: 130px;
		
	}
	._td2{
		line-height: 25px;
		text-align: left;
		margin-left: 100px;
		padding-left: 15px;
	}

</style>
<body>
   
   <div class="total-title">
      <div id="move-img-title">
         <br>
         <div id="move-titleWords">
            <h3 class="testFontEDB" style="font-size: 30px; padding: 0px; margin: 0px; margin-top: 30px;">회원정보 수정</h3>
            
            <div class="changeInfoPhoto">
				<img style="margin-top: -50px; margin-left: 15px; width: 180px;" 
						src="../resources/img/선1.png" />
			</div>  
         </div>
      </div>
   </div>
   <div class="total-table">
      <form action="/personal/registerMem"method="post" name="myForm">
         <div id="table-center">
            <table>
               <tr>
                  <td class="firstCol _td1 testFontEDB">이름</td>
                  <td class="midTd _td2" id="move-name">
                     &nbsp;&nbsp;&nbsp;<input type="text" class="testFontEDR" id="mname" name="mname" value= "${mname}" onkeyup="confirmName();">
                     <br>
                     &nbsp;&nbsp;
                     <label id="nameWarning" class="testFontEDR">이름 : 한글 2~8글자</label>
                     <!-- <span id="nameWarning">이름 : 한글 2~8글자</span> -->
                  </td>
               </tr>
               <tr>
                  <td class="firstCol _td1 testFontEDB">아이디</td>
                  <td class="midTd _td2"  id="move-id">
                     &nbsp;&nbsp;
                     <input type="text" name="mid" id="mid" class="input_id testFontEDR" value="${mid}"  readonly="readonly" onkeyup="confirmId();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="idWarning" class="testFontEDR">아이디 : 6~16자, 소문자 + 숫자</span>               
                  </td>
               </tr>
               <tr>
                  <td class="firstCol _td1 testFontEDB">비밀번호</td>
                  <td class="midTd _td2" id="move-pw">
                     &nbsp;&nbsp;
                     <input type="password" id="mpw" class="testFontEDR" name="mpw" onkeyup="checkPw();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="pwWarning" class="testFontEDR">비밀번호를 입력해주세요.</span>
                  </td>
               </tr>
               <tr>
                  <td class="firstCol _td1 testFontEDB">비밀번호 확인</td>
                  <td class="midTd _td2"  id="move-chpw">
                     &nbsp;&nbsp;
                     <input type="password" class="testFontEDR" id="mchpw" name="mchpw" onkeyup = "showChPw();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="chPwWarning" class="testFontEDR">비밀번호 확인</span>
                  </td>
               </tr>
               <tr>
                  <td class="firstCol _td1 testFontEDB">이메일</td>
                  <td class="midTd _td2" id="move-email">
                     &nbsp;&nbsp;
                     <input type="email" class="testFontEDR" id="memail" name="memail" value="${memail }" onkeyup="isValidEmail();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="emailWarning" class="testFontEDR">이메일을 입력해주세요</span>
                  </td>
               </tr>
            </table>
            <br><br>
         </div>
         <div class="buttonCenter">
            <input class="btn-send testFontEDR" type="button" id="reg_submit" value="등록" onclick = "submitWithNeeds(this.form);">
            <input class="btn-send testFontEDR" type="reset" value="취소" onclick="moveToMain();">
         </div>
      </form>
   </div>
   <br><br>
   <%@include file="../include/footer.jsp" %>
</body>
</html>