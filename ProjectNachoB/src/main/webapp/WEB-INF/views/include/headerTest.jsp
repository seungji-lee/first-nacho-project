<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/>header 부트스트랩 -->
</head>
<style>

@font-face {
  font-family: testFontEDB;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB{font-family : "testFontEDB", serif;}

@font-face {
  font-family: testFontCafeOh;
  src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}
.testFontCafeOh{font-family : "testFontCafeOh", serif;}

@font-face {
  font-family: testFontEDR;
  src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}
.testFontEDR{font-family : "testFontEDR", serif;}



	
	li {
	    list-style:none;
		
	}
	
	.TestLi {
		float: left;
		margin-left: 20px;
		padding-top: 1%;
	}

	.logo{
		margin-left: 47%;
	}
	
	.TestLi1{
		float: right;
		margin-right: 10px;
		margin-left: 10px;
		width: 100px;
		position: absolute;
		left: 510px;
		top: 25px;
	}
	
	.TestLi2{
		float: right;
		position: absolute;
		left: 505px;
		top: 25px;
	}

	.TestSerch{
		float: right;
		margin-right: 3%;
		position: absolute;
		left: 1110px;
		top: 50px;
		
		
	}
	
	a, .TestFontSt{
		text-decoration:none;
		color: black;
	}
	
	.testHead{
		background-color: #F5E797;
		height: 90px;
		margin: 0px;
		padding-top: 1%;
		border-bottom: 3px solid #DBCF88;
		
	}

	.logo{
		position: absolute;
        left: -60px;
        top: 0px;
	}
	
	html,body {

	margin: 0;
	padding: 0;

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
<body>
	<nav class="testHead" id="testHead">
		<form>
		  <div style="position: fixed; bottom: 5px; right: 10px; z-index: 9999;">
   			 <a href="#testHead">
   			 	<img src="../resources/img/top.png" title="위로 가기">
   			 </a>
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
						<input class="testFontEDR" style="height: 25px;" type="button" value="검색" onclick="search_dynamic(this.form)">
					</div>
					
					<ul> 
						<li class="TestLi1">
				        	<sec:authorize access = "isAnonymous()">
				        		<a class="TestFontSt testFontEDB TestLi1" href="/nachoCustomLogin">로그인</a>
				        	</sec:authorize>
				        	<sec:authorize access = "isAuthenticated()">
				        		<a class="TestFontSt testFontEDB TestLi1" href="/customLogout">로그아웃</a>
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

	</nav>
</body>
</html>