<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">   <!-- Nanum Gothic 폰트 링크 시작 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet"> <!-- 폰트 끝 -->
<!-- <link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/> -->
 <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>   <!-- 슬라이더 -->

<title>Insert title here</title>
<style>
   @font-face {
     font-family: testFontEDB;
     src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
   }
   
   *{
      font-family: 'Nanum Gothic', sans-serif;    /* 폰트 전체 적용 */
    }
      html, body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        background-color : white;      /* 윗부분 배경색 */
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 1104px;
        height: 345px;
        background-color : #blue;
      }

      .swiper-slide {
      /*    position : relative; */
        text-align: center;
        font-size: 18px;
        background: #gray;

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
        width: 95%;
        height: 67%;
        object-fit: cover;
        border-radius : 15px;
      }

   #fantasyButton, #crimeButton, #actionButton, #meloButton, #SFButton, #crimeButton, #dramaButton, 
   #ammaButton, #aniButton, #warButton, #comedyButton{
      width : 100px;
   }
   .tableWrap{
      /* position : fixed;
         top : 0;  */  /* 적으면 가장 윗단으로 고정된다.  */
      background-color : #8dc3ca;
      width : 100%;
      margin : auto;
      margin: 0;
        padding: 0;
   }
   .mInfo:hover{
      background-color : rgba(255,255,255,0.5);
      text-align : center;
      color : rgba(0,0,0,1);
   }
   .mInfo{
      width : 194.56px;
      height : 282.22px;      /* hover시 반투명 흰색 조절(이 div속에 있으므로 미리 크기를 키워줘야한다.) */
      text-align : center;
      padding: 5px 10px;
      position : absolute;
      left : 0px;
      border-radius : 15px;
      color : rgba(255,0,0,0) !important;   /* 여기에서 색을 먹여도 안바뀐다. */
   }
   .aSize{
      display : inline-block;
      width : 194.56px;
      height : 272.22px;
      color : rgba(255,255,255,0);   /* 먹힌다. */
   }
   .aSize:hover {
      position : relative;
      top : -5px;
      left : -10px;
      width : 194.56px;
      height : 272.22px;
      /* background-color : red;    */      /* 영역 확인시 사용, solid 사용이 더 좋을듯(테두리)  */
      border-radius : 15px;
      color : rgba(0,0,0,1);      /* 호버 후 글자색 */   
   }
   a{
      text-decoration : none;
      font-weight : 900;
      color : black;
   }
   img.relative{
      position: fixed;
      bottom: 20px; left: 1160px;
      z-index : 300;
      /* float : right; */
   }
   .totalHeader{         /* 헤더 전체 div */
      position : fixed;
      top : 0;
      width: 100%;
      z-index : 300;
   }
   .header{
      display : flex;
      width: 100%;
      height :70px;
      background-color : blue;
   }
   .buttonTable{
      width : 100%;
      postion : relative;
      top : 10px;
      left : 10px;
      height : 60px;
   }
   .space{      /* totalHeader 고정해주면 윗단으로 올라와서 아래 정보가 위로 올라오는 공간을 채워주는 space  */
      width: 100%;
      height :185px;
      background-color : skyblue;
   }
   /* #hideWhen{
      padding-top: 50px;
   } */
      /*헤더 테스트 해보기*/
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

   .blank{
      float: left;
      width: 340px;
      
   }
   .blank2{
      float: left;
      width: 250px;
   }
    .searchedList{
      text-align: center;
      font-size: 30px;
   }
</style>
<script type="text/javascript">
   //검색어 정규식
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
   <br><br><br>
         <!-- 통합 검색(검색어가 없을 시 안나오게 처리) -->
   <div id="hideWhen">
      <h2 class="searchedList testFontEDB" id= "searchedList" style="text-align: center;">&nbsp;&nbsp;${result }(으)로 검색한 결과입니다.</h2>
          <!-- Swiper -->
       <div class="swiper mySwiper" id="swiperSize">
         <div class="swiper-wrapper">
              <c:forEach items="${listAll }" var="movie">
               <div class="swiper-slide">
                  <div class="pic">
                     <img src="../../resources/img/${movie.poster }" alt = "poster image">                                 
                  </div>
                  <div class="mInfo">
                     <a class="aSize" href = "/project/get?mno=${movie.mno }">
                        <br><br><br>
                        ${movie.title } <br><br>
                        ${movie.director }
                     </a>
                  </div>
               </div>
           </c:forEach>
         </div>
         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>
         <div class="swiper-pagination"></div>
       </div>
   </div>
   <br><br><br><br><br><br>
   <%@include file="../include/footerTest.jsp"%>
   <!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   <!-- Initialize Swiper -->
   <script>
     var swiper = new Swiper(".mySwiper", {
       slidesPerView: 5,
       spaceBetween: 20,
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
   </script>
</body>
</html>