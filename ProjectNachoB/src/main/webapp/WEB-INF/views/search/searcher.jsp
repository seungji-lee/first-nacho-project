<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/searcherHeader.jsp" %>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport"content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- jquery 추가, 안하면 에러 -->
<title>Insert title here</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<link rel="preconnect" href="https://fonts.googleapis.com">   <!-- Nanum Gothic 폰트 링크 시작 -->
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet"> <!-- 폰트 끝 -->
 <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>   <!-- 슬라이더 -->
<style type="text/css">

@font-face {
  font-family: testFontEDB1;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB1{
		font-family : "testFontEDB1", serif;
		font-size: 25px;
		margin: auto; 
		margin-top: 15px;
		margin-left: 180px;
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
        margin-left: 224px;
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


   .oneLine{
      width: 120px;
      margin : auto;
      display: inline-block;
   }
   .popularB{
      width :110px;
   }
   .center{
      width : 500px;
      margin : auto;
   }
   .searcherLength{
      width : 300px;
   }
   td{
      width : 100px;
   }
   table{
      /* border-spacing : 200px; */
      /* border : 1px solid #444444; */
   }
   tr, td{
      padding : 5px;
   }
   /* 장르 버튼(아이디)로 버튼 가로 길이 설정 */
   #fantasyButton, #SFButton, #adventureButton, #actionButton, #warButton, #crimeButton, #dramaButton, 
   #familyButton, #aniButton, #comedyButton{
      width : 100px;
   }
   /* 관람가, 개봉년도 버튼(아이디)로 버튼 가로 길이 설정[20개 한번에 설정 불가] */
   #allAgeButton, #age12Button, #age15Button, #age19Button, #year90_95Button, 
   #year96_00Button, #year01_05Button, #year06_10Button, #year11_15Button, #year16_21Button{
      width : 100px;
   }
   .tableWrap{
      /* position : fixed;
         top : 0;  */  /* 적으면 가장 윗단으로 고정된다.  */
      background-color : #ecf0f1;
      width : 100%;
      margin : auto;
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
      width: 100%;
      height : 175px;      /* 버튼으로 눌려서 생기는 윗 공간 단차 조절  */
      z-index : 300;
   }
   .header{
      /* position : absolute; */
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
      height : 20px;
   }
   #firstBlock{
      background-color: #2E9AFE;
   }
   #firstBlockChild{
      position : relative;
      top : 23px;
      left : -110px;
      width : 100px;
      margin : auto;
      background-color : orange;
   }
   #secondBlock{
      background-color: #FA5858;      
   }
   #secondBlockChild{
      position : relative;
      top : 23px;
      width : 100px;
      margin : auto;
      background-color : red;
      
   }
   #thirdBlock{
      background-color : #81F781;      
   }
   #thirdBlockChild{
      position : relative;
      width : 150px;
      margin : auto;
      background-color : pink;
      top : 10px;
      left : 120px;
      padding : 10px;
   }
   .child{
       flex : 1;   /* header div 나누기 */
   }
   .space{      /* totalHeader 고정해주면 윗단으로 올라와서 아래 정보가 위로 올라오는 공간을 채워주는 space  */
      width: 100%;
      height: 90px;
      /* background-color: skyblue; */
      /* z-index : 500; */
   }
   
   .footer{
      text-align: center;
   }
   /* nav{
      position : relative;
   } */
   .genreTitle{
		position : relative;
		top: 30px;
		left: 40px;
		margin-bottom: 10px;
      
   }
</style>


<script type="text/javascript">
   
   
   
   // 검색어 정규식
   function search_dynamic(f){
      if(f.value.value  ==''){
         alert("검색어를 입력하세요");
         return;
      }
      f.action="/search/searchResult";
      f.submit();
   }
   
       // fantasy 버튼 동작
     function btn_fantasy(f){
       var value = $("input[name='fantasy']").val();
       f.action = "/search/searcher?value=" + value;
      f.submit();
   }
      // SF 버튼 동작   
     function btn_action(f){
          var value = $("input[name='SF']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
      
   // 모험 버튼 동작   
     function btn_adventure(f){
          var value = $("input[name='adventure']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
      
   // 액션 버튼 동작   
     function btn_drama(f){
          var value = $("input[name='action']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   
   // 전쟁 버튼 동작   
     function btn_actAmma(f){
          var value = $("input[name='war']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   
   // 범죄 버튼 동작   
     function btn_war(f){
          var value = $("input[name='war']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   // 드라마 버튼 동작   
     function btn_SF(f){
          var value = $("input[name='drama']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   // 가족 버튼 동작   
     function btn_crime(f){
          var value = $("input[name='family']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   // 애니메이션 버튼 동작   
     function btn_war(f){
          var value = $("input[name='ani']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      }
   // 코미디 버튼 동작   
     function btn_comedy(f){
          var value = $("input[name='comedy']").val();
          f.action = "/search/searcher?value=" + value;
         f.submit();
      } 
   
   
   // 로그인 버튼 동작
      function login(f){
      location.href="login";
      //f.submit();
   }
   // 회원가입 버튼 동작
      function registerMem(f){
      location.href ="registerMem";
   }
   // 페이지 내 버튼 이동시 상단고정으로 생기는 단차 잡아주는 동작
      $(function () {
          $(".innerAnchor").on("click", function(){
              var headerHeight = $(".totalHeader").outerHeight();
              var href = $(this).attr("href");
              var target = $(href == "#" || href == "" ? "body" : href);
              var position = target.offset().top - headerHeight;
              $("html, body").animate({ scrollTop: position }, 300, "swing");
          });
      });
</script>
</head>
<body id ="bodyForLocation">
   <div class= "space">
   </div>
    <div  id="fantasyStart">
      <h3 id="firstMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${fantasy }</h3>
          <!-- Swiper -->
       <div class="swiper mySwiper">
         <div class="swiper-wrapper">
              <c:forEach items="${fantasyList }" var="movie">
               <div class="swiper-slide">
                  <div class="pic">
                     <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
                  </div>
                  <div class="mInfo">
                     <a class="aSize" href = "/project/get?mno=${movie.mno }">
                        <br><br><br>
                        ${movie.title } <br><br>
                        평점 : ${movie.mpoint }
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
    <br><br>
    
    <div id="SFStart">
      <h3 id="secondMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${SF }</h3>
       <!-- Swiper -->
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
             <c:forEach items="${SFList }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
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
    <br><br>
    <div id="adventureStart">
       <h3 id= "thirdMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${adventure }</h3>
                <!-- Swiper -->
       <div class="swiper mySwiper">
         <div class="swiper-wrapper">
              <c:forEach items="${adventureList}" var="movie">
               <div class="swiper-slide">
                  <div class="pic">
                     <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
                  </div>
                  <div class="mInfo">
                     <a class="aSize" href = "/project/get?mno=${movie.mno }">
                        <br><br><br>
                        ${movie.title } <br><br>
                        평점 : ${movie.mpoint }
                     </a>
                  </div>         
               </div>
           </c:forEach>
         </div>
         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>
         <div class="swiper-pagination"></div>
       </div>
       <div id="actionStart"></div>   <!-- id로 안하고 class로 해서 에러생김 주의 -->
       <h3 id= "fourthMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${action }</h3>
       <!-- Swiper -->
       <div class="swiper mySwiper">
         <div class="swiper-wrapper">
              <c:forEach items="${actionList }" var="movie">
               <div class="swiper-slide">
                  <div class="pic">
                     <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
                  </div>
                  <div class="mInfo">
                     <a class="aSize" href = "/project/get?mno=${movie.mno }">
                        <br><br><br>
                        ${movie.title } <br><br>
                        평점 : ${movie.mpoint }
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
    <br><br>
    <!-- 5번째 영화 리스트 -->
    <a id="warStart"></a>
   <h3 id="5thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${war }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${warList}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 6번째 영화 리스트 -->
    <div id="crimeStart"></div>
   <h3 id="6thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${crime }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${crimeList }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    
    
    <!-- 7번째 영화 리스트 -->
    <div id="dramaStart"></div>
   <h3 id="7thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${drama }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${dramaList }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 8번째 영화 리스트 -->
    <div id = "familyStart"></div>
   <h3 id="8thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${family }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${familyList }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 9번째 영화 리스트 -->
    <div id = "aniStart"></div>
   <h3 id="9thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${ani }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${aniList}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 10번째 영화 리스트 -->
    <div id = "comedyStart"></div>
   <h3 id="10thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${comedy }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${comedyList}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 11번째 영화 리스트 -->
    <div id="allAgeStart"></div>
   <h3 id="11thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${allAge }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${allAgeList }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 12번째 영화 리스트 -->
    <div id="age12Start"></div>
   <h3 id="12thMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${age12 }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${age12List }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 13번째 영화 리스트 -->
    <div id="age15Start"></div>
   <h3 id="thirteenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;🔥${age15 }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${age15List }" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 14번째 영화 리스트 -->
    <div id="age19Start"></div>
   <h3 id="forteenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${age19 }</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${age19List}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 15번째 영화 리스트 -->
    <div id="year90_95Start"></div>
   <h3 id="fifteenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${year1_1}~${year1_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list1990_1995}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 16번째 영화 리스트 -->
    <div id="year96_20Start"></div>
   <h3 id="sixteenMovieList" class= "genreTitle testFontEDB1" >&nbsp;&nbsp;${year2_1}~${year2_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list1996_2000}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 17번째 영화 리스트 -->
    <div id="year01_05Start"></div>
   <h3 id="seventeenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${year3_1}~${year3_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list2001_2005}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 18번째 영화 리스트 -->
    <div id="year06_10Start"></div>
   <h3 id="eightteenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${year4_1}~${year4_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list2006_2010}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 19번째 영화 리스트 -->
    <div id="year11_15Start"></div>
   <h3 id="nineteenMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${year5_1}~${year5_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list2011_2015}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
     
    <br><br>
    <!-- 20번째 영화 리스트 -->
    <div id="year16_21Start"></div>
   <h3 id="twentyMovieList" class= "genreTitle testFontEDB1">&nbsp;&nbsp;${year6_1}~${year6_2}</h3>
       <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
           <c:forEach items="${list2016_2020}" var="movie">
            <div class="swiper-slide">
               <div class="pic">
                  <img src="../../resources/img/${movie.poster }" alt = "poster image" width="120">                                 
               </div>
               <div class="mInfo">
                  <a class="aSize" href = "/project/get?mno=${movie.mno }">
                     <br><br><br>
                     ${movie.title } <br><br>
                     평점 : ${movie.mpoint }
                  </a>
               </div>
            </div>
        </c:forEach>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    <!-- 20번째 줄 end -->
 
       <!-- footer 시작-->
<%@include file="../include/searcherFooter.jsp"%>  
    <!-- footer 끝-->
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