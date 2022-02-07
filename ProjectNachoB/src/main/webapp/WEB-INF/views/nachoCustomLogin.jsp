<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="include/headerTest.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

   .centerForBlock{
      width : 50%;
      height: 220px;
      margin : auto;
      margin-left: 490px;
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
   
   #move-title{
      width : 50%;
      height : 100px;
      margin : auto;
      text-align : center;
      position: relative;
      margin-top: -5px;
   }
   
   #move-table{
      position : relative;
      left :150px;
      margin-top: -10px;
   }
   
   .login-title{
      position : relative;
      top : 30px;
      left : -10px;
   }
   
   .move-btn{
      margin-top: -15px;
      left : 125px;
      width: 100px;
      margin-left: 7px;
   }
   
   ._thTd{
   		text-align: center;
   }
   
</style>
<script type="text/javascript">
   // 비밀번호 변경 성공
   window.onload = function(){
      if(${result eq 1}){
         alert("비밀번호가 정상적으로 변경되었습니다.");
      }   
   }
   // 회원가입창 으로 이동
   function toRegister(){
      location.href = "/personal/registerMem";
   }
   // 아이디 비밀번호 검색창 으로 이동
   function tofindIdPw(){
      location.href = "/personal/findIdPw";
   }
   // 통합검색
   function search_dynamic(f){
      if(f.value.value  ==''){
         alert("검색어를 입력하세요");
         return;
      }
      f.action="/search/searchResult";
      f.submit();
   }
</script>
<title>Insert title here</title>
</head>
<body>
   <div id = "move-title">
      <h2 class = "login-title testFontEDB">Login</h2>
   </div>
   <div class="centerForBlock">
      <div id="move-table">
         <form action="/login" method="post"> <!-- post, /login을 통해서만 처리가 된다. -->
            <table style="border-spacing: 7px;">
               <tr>
               <td class="testFontEDB _thTd">ID : </td>
               <td><input type="text" class="testFontEDR" placeholder="아이디 입력" name= "username"></td>
            </tr>
            <tr>
               <td class="testFontEDB _thTd">PW : </td>
               <td><input type="password" class="testFontEDR" placeholder="비밀번호 입력" name="password"></td>
            </tr>
            <tr>
               <td colspan="2"><input type="checkbox" class="testFontEDR _thTd" style="margin-left: 40px;" name="remember-me">아이디 기억하기</td>
            </tr>
            
              <tr>
               <c:if test="${!empty error }">
                  <td colspan="2">
                     <label id="errorWarning" class="testFontEDR" style="margin-left: -33px; color: red;">아이디 또는 비밀번호가 잘못 입력 되었습니다.</label>
                  </td>
               </c:if>            
            </tr>
            
            <tr>
               <td colspan="2">
               <input type="submit" class="testFontEDR" value="LOGIN" 
               			style=" width: 200px; margin-top: 10px; margin-bottom: -15px; margin-left: 6px;">
               </td>
            </tr>
          
            </table>
            <br>
               <input type="button" class="testFontEDR move-btn" value="ID/PW찾기" onclick ="tofindIdPw();">
               <input type="button" class="testFontEDR move-btn" value="회원가입" onclick="toRegister();">
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
            <br><br>
         </form>
      </div>
   </div>
   <br><br>

    <%@include file="include/footerTest.jsp" %>
</body>
</html>