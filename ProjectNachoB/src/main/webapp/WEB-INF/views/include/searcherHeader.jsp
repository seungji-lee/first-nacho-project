<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/>header 부트스트랩 -->
<style type="text/css">
@font-face {
  font-family: testFontEDB;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB{
		font-family : "testFontEDB", serif;
		position : relative;
      	top : 8px;
      	left : 38px; 
      	font-size: 15px;
	}

@font-face {
  font-family: testFontCafeOh;
  src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}
   .testFontCafeOh{
      font-family : "testFontCafeOh", serif;
      position : relative;
      top : -47.5px;
      left : 38px;      
   }

@font-face {
  font-family: testFontEDR;
  src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}
   .testFontEDR{
      font-family : "testFontEDR", serif;
      position : relative;
      top : -22px;
      left : -275px;      
   }
   
   li {
       list-style:none;
      
   }
   
   .TestLi{
      float: left;
      margin-left: 20px;
      padding-top: 1%;
   }

   .logo{
      position : relative;
      top : -34px;
      left : 285px;
   }
   
   .TestLi1{      
      float: right;
      margin-right: 10px;
      margin-left: 180px;
      width: 100px;
      position: absolute;
      left: 364px;         /* 로그인, 로그아웃 버튼 위치 수정 */
      top: 15px;            /* 로그인, 로그아웃 버튼 위치 수정 */
   }
   
   .TestLi2{
      float: right;
      position: absolute;
      left: 519px;
   		 top: 15px;           /* MY 버튼 위치 수정 */
   }

   .TestSerch{
      float: right;
      margin-right: 3%;
      position: absolute;
      left: 1110px;
      top: 50px;
      margin-left: 310px;
      
   }
   
   a, .TestFontSt{
      text-decoration:none;
      color: black;
   }
   
   .testHead{
      width : 100%;
      background-color: #F5E797;
      height: 90px;
      margin: 0px;
      padding-top: 1%;
      border-bottom: 3px solid #DBCF88;
      position: fixed;
      z-index : 10;
   }
   
   html,body {

      margin: 0;
      padding: 0;
   }
   #move-loginMy{
      position : relative;
      top : 10px;
      left : -10px;
   }
   .tableWrap{
      /* position : fixed;
         top : 0;  */  /* 적으면 가장 윗단으로 고정된다.  */
      background-color : #ecf0f1;
      width : 100%;
      margin : auto;
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
      z-index : 300;
      /* padding: 10px 0; */
      
   }
      a{
      color : black;
      text-decoration : none;
   }
      ul{
      padding: 0;
      margin-left: -30px;
      margin-top: -5px;
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
      .logo{
      float: left;
      margin: auto;
      padding: auto;
      margin-left: 36px;
      margin-top: 5px;
   }
   .blank{
      float: left;
      width: 340px;
      
   }
   .blank2{
      float: left;
      width: 250px;
   }
   #allBtn{
      display :inline-block;
      width : 100%;
      margin : auto;
      position : relative;
      top : -35px;    /* 뒤에 px를 안적으면 안먹힌다 */
      left : 0px;
      border-bottom : 1px solid black;
   }
      /* 장르 버튼(아이디)로 버튼 가로 길이 설정 */
   #fantasyButton, #SFButton, #adventureButton, #actionButton, #warButton, #crimeButton, #dramaButton, 
   #familyButton, #aniButton, #comedyButton{
      width : 100px;
      height : 30px;
      background-color : #ff9c7d;
      border-radius : 10px;
      border-color : #ff9c7d;
   }
   /* 관람가, 개봉년도 버튼(아이디)로 버튼 가로 길이 설정[20개 한번에 설정 불가] */
   #allAgeButton, #age12Button, #age15Button, #age19Button, #year90_95Button, 
   #year96_00Button, #year01_05Button, #year06_10Button, #year11_15Button, #year16_21Button{
      width : 100px;
      height : 30px;
      border-radius : 10px;
   }
   #allAgeButton, #age12Button, #age15Button, #age19Button{
      background-color : skyblue;
      border-color : skyblue;
   }
   #year90_95Button, #year96_00Button, #year01_05Button, #year06_10Button, 
   #year11_15Button, #year16_21Button{
      background-color : #84cb87;
      border-color : #84cb87;      
   }
   
   .buttonTable{
   	margin-left: 10px;
   	margin-top: -5px;
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
<body style="overflow-x: hidden" id="testHead">
   <nav class="testHead">
      <div class="totalHeader">
         <form>
         
         <div style="position: fixed; bottom: 5px; right: 10px; z-index: 9999;">
   			 <a href="#testHead"><img src="../resources/img/top.png" title="위로 가기"></a>
		  </div>
		  
				<div>
					<ul>
						<li class="TestLi testFontEDB"><a href="/project/main">홈</a></li>
						<li class="TestLi testFontEDB"><a href="/project/ticket1">영화 예매</a></li>
						<li class="TestLi testFontEDB"><a href="/search/searcher">영화 검색</a></li>
						<li class="TestLi testFontEDB"><a href="/board/list?pageNum=1&amount=10">후기 게시판</a></li>
						<li class="TestLi testFontEDB"><a href="/notice/list?pageNum=1&amount=10">공지사항</a></li>
					</ul>
			
					<div class="logo">
						<a href="/project/main"><img src="../resources/logo/111로고.png" /></a>
					</div>
				
					<div class="TestSerch">
						<input class="testFontEDR" type="text" name="value" placeholder="영화, 작품명, 감독, 배우를 검색해보세요." style="width: 300px; height: 20px;">
						<input class="testFontCafeOh" style="height: 25px;" type="button" value="검색" onclick="search_dynamic(this.form)">
					</div>
					
					<ul> 
						<li class="TestLi1">
				        	<sec:authorize access = "isAnonymous()">
				        		<a class="TestFontSt testFontEDB TestLi1" href="/nachoCustomLogin">로그인</a>
				        	</sec:authorize>
				        	<sec:authorize access = "isAuthenticated()">
				        		<a class="TestFontSt testFontEDB TestLi1" href="/customLogout" style="left: 352px;">로그아웃</a>
				        	</sec:authorize>
						</li>
				      	<li class="TestLi2">
				      		<sec:authorize access = "isAuthenticated()">
				        		<a class="TestFontSt testFontEDB TestLi2" href="/personal/myPage">MY</a>
				        	</sec:authorize>
				        </li>
					</ul>
					
				</div>	
		
		</form>
         <div id ="allBtn">
            <div class="tableWrap">
               <table class="buttonTable">
                  <tr>
                     <td>
                        <div>
                           <a href = "#fantasyStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button" id = "fantasyButton" name="fantasy" value="판타지"> <!--1번째  -->                        
                           </a>
                        </div>
                     </td>
                  
                     <td>
                        <div>
                           <a href="#SFStart" class="innerAnchor">                     
                              <input class="btn btn-warning" type="button"  id = "SFButton" value="SF" name="SF">
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#adventureStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button"  id = "adventureButton" value="모험" name="모험">                        
                           </a>                                 
                        </div>
                     </td>
                     <td>
                        <div> 
                           <a href="#actionStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button"  id = "actionButton" value="액션" name="액션">                        
                           </a>                                 
                        </div>
                     </td>
                     <td>
                        <form method = "get">
                           <div>
                              <a href="#warStart" class="innerAnchor">
                                 <input class="btn btn-warning" type="button"  id = "warButton" value="전쟁" name="전쟁">                        
                              </a>
                           </div>
                        </form>   
                     </td>
                     <td>
                        <div>
                           <a href="#crimeStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button"  id = "crimeButton" value="범죄" name="범죄">                        
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#dramaStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button" id = "dramaButton" value="드라마" name="드라마">                        
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#familyStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button" id = "familyButton" value="가족" name="가족">                        
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#aniStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button"  id = "aniButton" value="애니메이션" name="애니메이션">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#comedyStart" class="innerAnchor">
                              <input class="btn btn-warning" type="button"  id = "comedyButton" value="코미디" name="코미디"><!--10번째  -->                        
                           </a>
                        </div>
                     </td>
                  </tr>
               </table>
            </div>
            <div class="tableWrap">
               <table class="buttonTable">
                  <tr>
                     <td>
                        <div>
                           <a href="#allAgeStart" class="innerAnchor">
                              <input class="btn btn-success" type="button" id = "allAgeButton" value="전체 관람가">                        
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#age12Start" class="innerAnchor">
                              <input class="btn btn-success" type="button"  id = "age12Button" value="12세 관람가">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#age15Start" class="innerAnchor">
                              <input class="btn btn-success" type="button"  id = "age15Button" value="15세 관람가">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#age19Start" class="innerAnchor">
                              <input class="btn btn-success" type="button"  id = "age19Button" value="19세 관람가">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year90_95Start" class="innerAnchor">
                              <input class="btn btn-info" type="button"  id = "year90_95Button" value="1990~1995">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year96_20Start" class="innerAnchor">
                              <input class="btn btn-info" type="button"  id = "year96_00Button" value="1996~2000">                  
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year01_05Start" class="innerAnchor">
                              <input class="btn btn-info" type="button" id = "year01_05Button" value="2001~2005">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year06_10Start" class="innerAnchor">
                              <input class="btn btn-info" type="button" id = "year06_10Button" value="2006~2010">                     
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year11_15Start" class="innerAnchor">
                              <input class="btn btn-info" type="button"  id = "year11_15Button" value="2011~2015">   
                           </a>
                        </div>
                     </td>
                     <td>
                        <div>
                           <a href="#year16_21Start" class="innerAnchor">
                              <input class="btn btn-info" type="button" id = "year16_21Button" value="2016~~2021">
                           </a>
                        </div>
                     </td>
                  </tr>
               </table>
            </div>
         <!-- 20개 버튼 end  -->
         </div>
      </div>
   </nav>
   
   
   <br><br><br><br><br>
</body>
</html>