<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
    <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

<title>영화 상세정보</title>
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

/*       html,
      body {
        position: relative;
        height: 100%;
      } */
/* 
      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      } */

      .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      .swiper {
        width: 80%;
        height: 300px;
        margin: 20px auto;
      }
      .append-buttons {
        text-align: center;
        margin-top: 20px;
      }

      .append-buttons button {
        display: inline-block;
        cursor: pointer;
        border: 1px solid #007aff;
        color: #007aff;
        text-decoration: none;
        padding: 4px 10px;
        border-radius: 4px;
        margin: 0 10px;
        font-size: 13px;
      }
      /* END OF BOOT */
      
   .container{
      width: 70%;
      margin: auto;
      position: center;
      padding-top : 100px;
   }
   .getpage1{
      text-align: center;
 
   }
   .getpage2{
      text-align: center;   
   }
   .getpage3{
      text-align: center;   
   }
   .getpage4{
      text-align: center;   
   }
   a{
      text-decoration: none;
   }
   #moviecomment{
      width: 700px;
      padding: 10px;
      
   }
   #mreply{
      padding-left: 270px;
   }
   .mreply{
      border: 1px solid black;
      padding: 10px;
      width: 1000px;
      background-color: #F6F0E3;
      
   }
   .mreply tr td{
      padding: 10px;
   }
   #mreplyer{
      height: 25px;
   }
   #inputPoint{
      padding: 10px;
   }
   input[type=submit]{
      padding: 8px;
   }
   
   /*헤더 테스트 해보기*/
   
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

   .move-infoTitle{         /* hr위에 페이지글자 개인적으로 추가(장환석) */
      position :relative;
      top : 42px;
      left :120px;
   }
   .content-width{
      width :80%;
      text-align : center;
      margin :auto;
   }
   .move-moviereply{
      position : relative;
      top : 10px;
      left : 55px;
   }
   #poster-changer{
      border-radius : 5px;
   }
   

   
</style>
<script type="text/javascript">
function search_dynamic(f){
   if(f.value.value  ==''){
      alert("검색어를 입력하세요");
      return;
   }
   f.action="/search/searchResult";
   f.submit();
}
</script>
</head>
<body>
   <%@include file="../include/headerTest.jsp"%>
<div class="move-infoTitle">
      <h2 class="testFontEDB" style="margin-left: 580px; margin-top: -10px; font-size: x-large; margin-bottom: 30px;">영화 정보</h2>   
   </div>
   <br><br>
   <div class="getpage1">
      ${movie.preview }<br><br>
   </div>
   <div class="getpage2 testFontEDB">
      ${movie.title }<br>
      ${movie.rdate }년 &nbsp; ${movie.rtime }분 &nbsp; ${movie.age }<br>
      장르 : ${movie.genre1 }, ${movie.genre2 }<br>
      평점 : ${movie.mpoint } / 5점<br><br> </div><hr><br>
      <div class="getpage2 testFontEDR">
      감독 : ${movie.director }<br>
            
      출연 : ${movie.mainact1 }, 
            
           ${movie.mainact2 }, 
            
           ${movie.supportact1 }, 
            
           ${movie.supportact2 }<br><br></div>
         <div class="getpage2 content-width testFontEDR">
             ${movie.content }      
         </div>
         <br><hr>
  
   
   <!-- 여기는 한줄평 댓글 테이블 들어갈 자리 -->
   <div class="move-moviereply">
      <h2 style="padding-left: 150px;" class="testFontEDB">영화 한줄평</h2>   
   </div>
   <form action="/project/get?mno=${movie.mno }&title=${movie.title}" method="post">
   <div class="getpage2 testFontEDR">
      <sec:authorize access = "isAnonymous()">
         <input type="text" id="mreplyer" class="testFontEDR" onclick = "location.href = '/nachoCustomLogin'" placeholder="로그인을 해주세요" readonly="readonly">  | &nbsp; <input type="text" id="moviecomment" placeholder="한줄평을 작성해보세요." name="content" onclick = "location.href = '/nachoCustomLogin'">   &nbsp;      
      </sec:authorize>
      <sec:authorize access = "isAuthenticated()">
         <input type="text" id="mreplyer" class="testFontEDR" name="mid" value="<sec:authentication property="principal.member.mid"/>" placeholder="로그인을 해주세요" readonly="readonly">  | &nbsp; <input type="text" id="moviecomment" placeholder="한줄평을 작성해보세요." name="content">   &nbsp;      
      </sec:authorize>
         
      평점 : <select id="inputPoint" name="point">
         <option value="5" class="testFontEDR">5점</option>
         <option value="4" class="testFontEDR">4점</option>
         <option value="3" class="testFontEDR">3점</option>
         <option value="2" class="testFontEDR">2점</option>
         <option value="1" class="testFontEDR">1점</option>
      </select> &nbsp;
      <sec:authorize access = "isAnonymous()">
         <input type="button" class="testFontEDR" value="등록" onclick = "location.href = '/nachoCustomLogin'">
      </sec:authorize>
      <sec:authorize access = "isAuthenticated()">
         <input type="submit" class="testFontEDR" value="등록">
      </sec:authorize>
      <input type="hidden" class="testFontEDR" value="${movie.mno }">
      <input type="hidden" class="testFontEDR" value="${movie.title }">
   </div>
   </form>
   <br><hr><br>
   <div id="mreply">
     <table class="mreply testFontEDR" style="border-spacing: 10px;">
            <c:choose>
            <c:when test="${empty MovieReplyList}">
               <tr>
                  <th><h4 class="testFontEDR notiA" style="font-size: x-large; color: red;">등록된 한줄평이 없습니다.</h4></th>
               </tr>
            </c:when>
           <c:otherwise>
         <c:forEach items="${MovieReplyList }" var="moviereply">
           <tr>
            <td style="width: 200px; background-color: #F4EAB4; border-right: 1px solid black; border-bottom: 2px solid #998F76; margin-right: 10px; text-align: center;">
               ${moviereply.mid }
            </td>
            <td style="width: 800px; border-bottom: 1px solid #D9CBA7; padding-left: 30px;" class="testFontEDR">
               ${moviereply.content }
            </td>
            <td style="width: 200px; text-align: right; border-bottom: 1px solid #D9CBA7;" class="testFontEDR" id="pointview">
               평점 : ${moviereply.point }점
            </td>
            <td style="width: 200px; text-align: right; border-bottom: 1px solid #D9CBA7;" class="testFontEDR">
               ${moviereply.regdate }
            </td>
            </tr>
         </c:forEach>
         </c:otherwise>
         </c:choose>
     </table>  
   </div>
      <br><hr><br>
   <!-- 비슷한 장르 영화 페이지 -->
   <h2 style="padding-left: 150px; " class="testFontEDB">비슷한 장르의 영화</h2>
   <h4 style="padding-left: 150px;" class="testFontEDR">${movie.genre1 } 장르의 영화</h4>
    <!-- Swiper -->
    <div #swiperRef="" class="swiper mySwiper">
      <div class="swiper-wrapper testFontEDR">
         <c:forEach items="${genre1 }" var="movie">
           <div class="swiper-slide testFontEDR" id="poster-changer">
               <a href="/project/get?mno=${movie.mno }"><img src = "../../resources/img/${movie.poster }" width="150px" height="200px" ></a><br>
            </div>
         </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div><br>
    <h4 style="padding-left: 150px;" class="testFontEDR">${movie.genre2 } 장르의 영화</h4>
    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
         <c:forEach items="${genre2 }" var="movie">
           <div class="swiper-slide">
               <a href="/project/get?mno=${movie.mno }"><img id = "poster-changer" src = "../../resources/img/${movie.poster }" width="150px" height="200px" ></a><br>
            </div>
         </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div><br><br>  
    <%@include file="../include/footer.jsp" %>
   
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
       var swiper = new Swiper(".mySwiper", {
        slidesPerView: 5,
        spaceBetween: 30,
        slidesPerGroup: 5,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
      
      function insertreply(f){ 
         f.submit();
          $("#mreply").load(window.location.href + "#mreply");
      }
    </script>
</body>
</html>