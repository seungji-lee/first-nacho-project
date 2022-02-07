<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../include/headerTest.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
<script type="text/javascript">

   //카카오 주소 api, 시간 남으면 사용하는 것으로 업데이트
/* function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
} */
   
      // 이름 정규식
   function confirmName(){
      var regName = /^[가-힣]{2,8}$/;   // 한글 이름 2~8글자 사이
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
      
      
      // 아이디 정규식
   function confirmId(){
         var regId = /^[a-z](?=.*[a-z])(?=.*[0-9]).{5,15}$/;   
         var id = document.forms.myForm.mid.value;
         var idWarning = document.getElementById("idWarning");
         var isIdConfirmed = document.getElementById("isIdConfirmed");
         if(!regId.exec(id) || id == "" || id == null){
            idWarning.innerHTML = "아이디 : 6~16자, 소문자 + 숫자";
            idWarning.style.color = "red";
            $("#isIdConfirmed").text("not confirmed");
            isIdConfirmed.style.color="white";
         }else{
            idWarning.innerHTML = "훌륭한 아이디네요";            
            idWarning.style.color = "blue";
            $("#isIdConfirmed").text("not confirmed");
            isIdConfirmed.style.color="white";
            
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
   // 모든 폼 전달하기
   function ConfirmAll(){
      location.href = "/personal/registerMem";
      f.submit();
   }
   
   // 취소하면 main으로 이동
   function moveToMain(){
      location.href = "/project/main";      
   }
   
   
   /* 중복아이디 체크 ajax */
   function sameIdCheck() {
      var regId = /^[a-z](?=.*[a-z])(?=.*[0-9]).{5,15}$/; // 아이디 정규식
      var isIdConfirmed = document.getElementById("isIdConfirmed");
        $.ajax({
            url : "/user/idCheck",
            type : "POST",
            dataType :"JSON",
            data : {"mid" : $("#mid").val()},
            success : function (result) {
                if(result == 1) {
                    alert("중복된 아이디입니다.");
                    $("#isIdConfirmed").text("not confirmed");
                    isIdConfirmed.style.color = "white";
                }else if(!regId.exec($("#mid").val())){
                   alert("아이디를 올바르게 입력하세요.")   
                }else if (result == 0) {
                    $("#id_check").attr("value", "Y");
                    alert("사용 가능한 아이디입니다.");
                    $("#reg_submit").attr("disabled",false);
                    $("#isIdConfirmed").text("confirmed");
                    isIdConfirmed.style.color = "white";
                }
            }

        })
    }
   
   // * 전송버튼 (폼들이 조건에 맞는지 체크)
   function submitWithNeeds(f){
      var regName = /^[가-힣]{2,8}$/;   // 한글 이름 2~8글자 사이
      var writtenName = $("#mname").val();
      var regId = /^[a-z](?=.*[a-z])(?=.*[0-9]).{5,15}$/;
      var writtenId = $("#mid").val();
      var regPw = /^[0-9a-zA-Z]{8,16}$/; // 비밀번호 숫자,소문자,대문자를 이용 8~16글자
      var writtenPw = $("#mpw").val();
      var writtenChPw = $("#mchpw").val();
      var regEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
      var writtenEmail = $("#memail").val();
      var checkBtn_IdCk = $("#isIdConfirmed").text();   // 아이디 확인이 되면 바뀌는 값
      
      if(!regName.exec(writtenName)){
         alert("이름을 한글 2~8글자 사이로 적어주세요.");
      }else if(!regId.exec(writtenId) || writtenId == ""){
         alert("아이디를 6~16, 소문자+숫자로 적어주세요.");
      }else if(!regPw.exec(writtenPw)){
         alert("비밀번호를 숫자,소문자,대문자를 이용해서 8~16글자로 적어주세요.");
      }else if(writtenPw != writtenChPw){
         alert("비밀번호 확인이 일치하지 않습니다.");
      }else if(!regEm.exec(writtenEmail)){
         alert("이메일 형식이 올바르지 않습니다.");
      }else if(checkBtn_IdCk != "confirmed"){
         alert("아이디 중복검사가 필요합니다.");
      }else{
         f.action = "/personal/registerMem";
         f.submit();         
      }
      
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

   .total-table{
      width : 70%;
      margin : auto;
      position : relative;
      top : 10px;
      left : 70px;
   }
   .upTable{
      width : 70%;
      margin : auto;
      position : relative;
      top : 5%;
      left : 60px;
      border-top : 1px solid #DEDEDE;
   }
   #upper-div{
      width : 70%;
      margin : auto;
      position : relative;
     top: 40px;
      left : 9px;
      text-align : center;
   }
   h4{
      width: 15%;
      margin : auto;
      display : inline-block;
   }
   regExpln{
      width: 30%;
      margin : auto;
   }
   .firstCol{
   		width: 150px;
   		text-align: center;
   		background-color: #F5E797;
   		
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
      top : -15px;
      left : 130px;
   }
     table, tr, td{
      border-collapse:collapse;
   }
   .midTd{
      width: 630px;
   }
   #isIdconfirmed{
      color : white;
   }
   #nameMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #idMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #pwMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #nameMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #chpwMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #emailMove{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #table-center{
      position : relative;
      top : 10px;
      left : 10px;
   }
   #tableMove{
      position : relative;
      top : 10px;
      left : 230px;
   }
   .button-size{
      width : 100px;
      margin-top: 25px;
      margin-left: 18px;
   }

</style>
<body>
   <div class="upTable" id="upper-div">
      <h2 class="testFontEDB" style="margin-bottom: 15px;">회원가입</h2>
      <label class="testFontEDR" >회원가입에 필요한 고객님의 정보를 입력해주세요.</label>     
   </div>
   <div class="total-table" id = "table-center">
      <form action="/personal/registerMem"method="post" name="myForm">
         <div id="tableMove">
            <table style="margin-left: 80px; margin-right: auto; margin-top: 55px;">
               <tr>
                  <td class="firstCol testFontEDB">이름</td>
                  <td class="midTd" id="nameMove">
                     &nbsp;&nbsp;&nbsp;<input type="text" class="testFontEDR" id="mname" name="mname" onkeyup="confirmName();">
                     <label class="testFontEDR" id="isIdConfirmed"></label>
                     <br>
                     &nbsp;&nbsp;
                     <span class="testFontEDR" id="nameWarning">(이름 : 한글 2~8글자)</span>
                  </td>
               </tr>
               <tr>
                  <td class="firstCol testFontEDB">아이디</td>
                  <td class="midTd" id="idMove">
                     &nbsp;&nbsp;
                     <input type="text" name="mid" id="mid" class="input_id testFontEDR"onkeyup="confirmId();">
                     <input type="button" id="btn_sameId" value="중복확인" class="testFontEDR" onclick= "sameIdCheck();">
                     <font id="id_check" size="2"></font>
                     <br>
                     &nbsp;&nbsp;
                     <span id="idWarning" class="testFontEDR">(아이디 : 6~16자, 소문자 + 숫자)</span>               
                  </td>
               </tr>
               <tr>
                  <td class="firstCol testFontEDB">비밀번호</td>
                  <td class="midTd" id="pwMove">
                     &nbsp;&nbsp;
                     <input type="password" id="mpw" class="testFontEDR" name="mpw" onkeyup="checkPw();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="pwWarning" class="testFontEDR">비밀번호를 입력해주세요.</span>
                  </td>
               </tr>
               <tr>
                  <td class="firstCol testFontEDB">비밀번호 확인</td>
                  <td class="midTd" id="chpwMove">
                     &nbsp;&nbsp;
                     <input type="password" id="mchpw" class="testFontEDR" name="mchpw" onkeyup = "showChPw();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="chPwWarning" class="testFontEDR">비밀번호 확인</span>
                  </td>
               </tr>
               <!-- <tr>
                  <td class="firstCol">생년월일</td>
                  <td class="midTd">
                     &nbsp;&nbsp;
                     <input class="yearSize" type="text" name="year" onchange="chBirth();">년
                     <input class="monthDaySize"type="text" name="month" onchange="chBirth();">월
                     <input class="monthDaySize"type="text" name="day" onchange="chBirth();">일
                     <br>
                     &nbsp;&nbsp;
                     <span id="birthWarning">년도는 4자리로 입력하세요</span>
                  </td>
               </tr> -->
               <tr>
                  <td class="firstCol testFontEDB">이메일</td>
                  <td class="midTd" id="emailMove">
                     &nbsp;&nbsp;
                     <input type="email" id="memail" class="testFontEDR" name="memail" onkeyup="isValidEmail();">
                     <br>
                     &nbsp;&nbsp;
                     <span id="emailWarning" class="testFontEDR">이메일을 입력해주세요</span>
                  </td>
               </tr>
               <!--  <tr>
                   <td class="firstCol">우편번호</td>
                  <td class="midTd">
                     &nbsp;&nbsp;
                     <input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode">
                     <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">               
                  </td>
               </tr>
               <tr>
                  <td class="firstCol">집주소</td>
                  <td class="midTd">
                     &nbsp;&nbsp;
                     <input type="text" id="sample6_address" class="addrSize" placeholder="주소">
                  </td>
               </tr>
               <tr>
                  <td class="firstCol">상세주소</td>
                  <td class="midTd">
                     &nbsp;&nbsp;
                     <input type="text" id="sample6_detailAddress" class="addrSize" placeholder="상세주소">
                     <input type="text" id="sample6_extraAddress" placeholder="참고항목">
                  </td>
               </tr>
               <tr>
                  <td class="firstCol">휴대폰</td>
                  <td class="midTd">
                     &nbsp;&nbsp;
                     <select name="pnum1">
                        <option value="">없음</option>
                        <option value="011">011</option>
                        <option value="010">010</option>
                        <option value="017">017</option>
                     </select>
                     -
                     <input class="pnumSize" type="text" name="pnum2">
                     -
                     <input  class="pnumSize" type="text" name="pnum3">
                  </td>
               </tr> -->
            </table>
         </div>
         <br><br>
         <div class="buttonCenter">
            <input type="button" class="button-size testFontEDR" id="reg_submit" value="등록" onclick = "submitWithNeeds(this.form);">
            <input type="reset" class="button-size testFontEDR" value="취소" onclick="moveToMain();">
         </div>
      </form>
   </div>
   <br><br>
   
   <%@include file="../include/footer.jsp" %>
   
</body>
</html>
