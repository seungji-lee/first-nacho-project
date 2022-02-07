<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@include file="../include/header.jsp"%> --%>
 <%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- 리스트들 전체 삭제 만들면 편리할듯, 시간 날때 ㄱㄱ -->
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

.testFontEDB {
	font-family: "testFontEDB", serif;
}

@font-face {
	font-family: testFontEDR;
	src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}

.testFontEDR {
	font-family: "testFontEDR", serif;
	}

   .myPage{
      width : 1000px;
      text-align: left;
      margin : auto;
   }
   .myDetails{
      width : 1000px;
      margin : auto;
   }
   
   a{
      text-decoration : none;
   }
   .infotable{
      text-align: center;
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
   }
   .testhead ul li a{
      text-decoration: none;
      color: black;
   }

   .move-ckTkBtn{
      position : relative;
      top : 10px;
      left : 24px;
   }
   
   ._testMyPageTh{
   		background-color: #F4EAB4;
   		height: 35px;
   }
   
   table {
	border-spacing: 10px;
}
   
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<script type="text/javascript">
   window.onload = function(){
      /* alert($("#checkValue").text()); */
      if(${result eq 0}){
         alert("수정 오류, 다시 시도하시오");
      }else if(${result eq 1}){
         alert("개인정보 수정완료!");
      }
      if(${tResult eq 0}){
         alert("예매삭제 실패!");
      }else if(${tResult eq 1}){
         alert("예매삭제 완료");         
      }
       if(${bResult eq false}){
         alert("게시글삭제 실패!");
      }else if(${bResult eq true}){
         alert("게시글삭제 완료!");
      }
       if(${MRresult eq 0}){
         alert("한줄평삭제 실패!");
      }else if(${MRresult eq 1}){
         alert("한줄평삭제 완료!");         
      }
      
/*       if($("#checkValue").text() == ""){      javascript로 버튼 없애기 했다가 깜빡거리는 증상때문에 c태그 사용
         $("#submitCkTk").hide();
      }else{
         $("#submitCkTk").show();         
      } */
       
   }
   
   function search_dynamic(f){
      if(f.value.value  ==''){
         alert("검색어를 입력하세요");
         return;
      }
      f.action="/search/searchResult";
      f.submit();
   }
   function deleteTicket(f){
      if(confirm("해당 티켓을 삭제하시겠습니까?") == true){
         f.action="/personal/myPage";
         f.submit();                  
      }else{
         
      }
   }
   function deleteBoard(f){
      if(confirm("해당 게시글을 삭제하시겠습니까?") == true){
         f.action = "/personal/deleteBoard";
         f.submit();
      }else{
         
      }
   }
   function deleteMyMreply(f){
      if(confirm("해당 한줄평을 삭제하시겠습니까?")== true){
         f.action = "/personal/deleteMyMreply";
         f.submit();
      }else{
         
      }
   }
   function TicketingcheckboxArr(){
      var tCheckArr = [] ; /* 배열 초기화 */
      target = document.getElementById('submitCkTk');
      $("input[name='tno']:checked").each(function(){
         tCheckArr.push($(this).val());      /* 체크된 값만 뽑아서 배열에 push */
      });
      
      if(tCheckArr == ""){
         target.disable = true;
         alert("선택된 티켓이 없습니다.");
      }else{
         
         if(confirm("체크된 티켓을 취소하시겠습니까?")== true){
            $.ajax({
                 url: '/personal/delete_ticketChecked'
                 , type: 'post'
                 , dataType: 'text'
                 , data: {
                     valueArr: tCheckArr
                 }
               , success: function(){
                     alert("해당 티켓 환불완료!");
                     location.href = "/personal/myPage";
               }
               ,error: function(){
                  alert("티켓환불 실패");
               }
             });
            
         }else{
         }
      }
      
   }
   
</script>
</head>
<body>
   <%@include file="../include/headerTest.jsp"%>
   
   <div class="myPage testFontEDR">
      <h2 class="testFontEDB">MY PAGE</h2>
      
      <sec:authentication property="principal.member.mname"/>&nbsp;회원님! 반갑습니다 &nbsp;
      <button class="testFontEDR" onclick="location.href='/personal/confirmPw'">개인정보수정</button>
      <!-- <input type="button" value="개인정보수정" onclick="location.href='/personal/confirmPw'"> -->
   <hr>
   </div>
   <div class= "myDetails">
         <h3 class="testFontEDB">나의 예매내역</h3>
         <div class="MyInfo testFontEDR">&nbsp;
            <table class="infotable">
               <c:choose>
                  <c:when test="${empty MyTicketInfo}">
                     <tr>
                        <th><h2 class="testFontEDB" style="font-size: x-large; color: red;">예매 내역이 존재하지 않습니다.</h2></th>
                     </tr>
                  </c:when>
                  <c:otherwise>
                     <tr>         
                        <th class="_testMyPageTh">선택 삭제</th>               
                        <th class="_testMyPageTh">영화 제목</th>
                        <th class="_testMyPageTh">상영관</th>
                        <th class="_testMyPageTh">상영 날짜</th>
                        <th class="_testMyPageTh">상영 시간</th>
                        <th class="_testMyPageTh">좌석 정보</th>
                        <th class="_testMyPageTh">예매 관리</th>
                     </tr>
                  </c:otherwise>
               </c:choose>
               <c:forEach items="${MyTicketInfo }" var="Ticket">
                       <tr>
                          <td style="width: 200px">
                           <input type="checkbox" id="checkedTicket" name="tno" value="${Ticket.tno}">
                           ${Ticket.tno}
                        </td>
                        <td style="width: 200px" id="checkValue">
                           ${Ticket.title }
                        </td>
                        <td style="width: 200px">
                           ${Ticket.theater }
                        </td>
                        <td style="width: 200px">
                           ${Ticket.tkdate }
                        </td>
                        <td style="width: 200px">
                           ${Ticket.tktime }
                        </td>
                        <td style="width: 200px">
                           ${Ticket.seat }
                        </td>
                        <td style="width: 200px">
                        <form method="post">
                              <input type ="button" value="삭제하기" onclick="deleteTicket(this.form);">
                           <input type = "hidden" value=<sec:authentication property="principal.member.mid"/> name="mid">
                           <input type = "hidden" value="${Ticket.title }" name="title">
                           <input type = "hidden" value="${Ticket.theater }" name="theater">
                           <input type = "hidden" value="${Ticket.tkdate }" name="tkdate">
                           <input type = "hidden" value="${Ticket.tktime }" name="tktime">
                           <input type = "hidden" value="${Ticket.seat }" name="seat">
                        </form>
                        </td>
                       </tr>
                  </c:forEach>
            </table>
            <div class="move-ckTkBtn">
               <c:if test="${!empty MyTicketInfo}">
                   <input type="button" value="선택 한 예매 삭제" id="submitCkTk" onclick = "TicketingcheckboxArr();">   
                </c:if>      
            </div>         
         </div>
      <br><hr>
      <div class="MyInfo">
         <h3 class="testFontEDB">나의 후기</h3>
         <table class="infotable testFontEDR">
            <c:choose>
                  <c:when test="${empty MyBoardInfo}">
                     <tr>
                        <th><h2 class="testFontEDB" style="font-size: x-large; color: red;">후기 내역이 존재하지 않습니다.</h2></th>
                     </tr>
                  </c:when>
                  <c:otherwise>
                     <tr>
                        <th class="_testMyPageTh">글 번호</th>
                        <th class="_testMyPageTh">제목</th>
                        <th class="_testMyPageTh">댓글수</th>
                        <th class="_testMyPageTh">작성일</th>
                        <th class="_testMyPageTh">수정일</th>
                        <th class="_testMyPageTh">게시글관리</th>
                     </tr>
                  </c:otherwise>
               </c:choose>      
            <c:forEach items="${MyBoardInfo }" var="board">
                    <tr>
                  <td style="width: 200px">
                     ${board.bno }
                  </td>
                  <td style="width: 200px">
                     ${board.title }
                  </td>
                  <td style="width: 200px">
                     ${board.replycnt }
                  </td>
                  <td style="width: 200px">
                     ${board.regdate }
                  </td>
                  <td style="width: 200px">
                     ${board.updatedate }
                  </td>
                  <td style="width: 200px">
                  <form method="post">
                        <input type ="button" value="삭제하기" onclick="deleteBoard(this.form);">
                     <input type = "hidden" value=<sec:authentication property="principal.member.mid"/> name="mid">
                     <input type = "hidden" value="${board.bno }" name="bno">
                     <input type = "hidden" value="${board.title }" name="title">
                     <input type = "hidden" value="${board.regdate }" name="regdate">
                     <input type = "hidden" value="${board.updatedate }" name="updatedate">
                  </form>
                  </td>
                    </tr>
            </c:forEach>
         </table>      
      </div>
      <br><hr>
      <div class="MyInfo">
         <h3 class="testFontEDB">나의 한줄평</h3>
         <table class="infotable testFontEDR">
            <c:choose>
               <c:when test="${empty MyMreply}">
                  <tr>
                     <th><h2 class="testFontEDB" style="font-size: x-large; color: red;">한줄평 내역이 존재하지 않습니다.</h2></th>
                  </tr>
               </c:when>
               <c:otherwise>
                  <tr>
                     <!-- <th>영화 제목</th> -->
                     <th class="_testMyPageTh">영화 제목</th>
                     <th class="_testMyPageTh">한줄평</th>
                     <th class="_testMyPageTh">평점</th>
                     <th class="_testMyPageTh">작성 날짜</th>
                     <th class="_testMyPageTh">한줄평 관리</th>
                  </tr>
               </c:otherwise>
            </c:choose>   
            <c:forEach items="${MyMreply }" var="Mreply">
                    <tr>
                      <td style="width: 200px">
                        <a href="/project/get?mno=${Mreply.mno }">${Mreply.title }</a>
                     </td> 
                     <td style="width: 200px">
                        <a href="/project/get?mno=${Mreply.mno }">${Mreply.content }</a>
                     </td>
                     <td style="width: 200px">
                        ${Mreply.point }점
                     </td>
                     <td style="width: 200px">
                        ${Mreply.regdate }
                     </td>
                     <td style="width: 200px">
                     <form method="post">
                           <input type ="button" value="삭제하기" onclick="deleteMyMreply(this.form);">
                        <input type = "hidden" value=<sec:authentication property="principal.member.mid"/> name="mid">
                        <input type = "hidden" value="${Mreply.mrno }" name="mrno">
                     </form>
                     </td>
                    </tr>
            </c:forEach>
         </table>      
      </div>
   </div>
   
   <br>
<%@include file="../include/footerTest.jsp"%>
  
<%--    <div class="dumiData">
      <p> principal : <sec:authentication property="principal"/> </p>
      <p> MemberVO : <sec:authentication property="principal.member"/> </p>
      <p> 사용자 이름 : <sec:authentication property="principal.member.mname"/> </p>
      <p> 사용자 아이디 : <sec:authentication property="principal.member.mid"/> </p>
      <p> 사용자 권한 리스트 : <sec:authentication property="principal.member.authList"/> </p>
   </div> --%>
</body>
</html>