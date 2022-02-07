<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/><!-- header 부트스트랩 -->
<style type="text/css">
	.centerForBlock{
		width : 500px;
		margin : auto;
	}
	
			/*헤더 테스트 해보기*/
	body{
		background-color: #F6F0E3;
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
	.logo{
		float: left;
		margin: auto;
		padding: auto;
	}
	.blank{
		float: left;
		width: 340px;
		
	}
	.blank2{
		float: left;
		width: 250px;
	}
	.footer{
		text-align: center;
	}
</style>
<script type="text/javascript">
	// 회원가입창 으로 이동
	function toRegister(){
		location.href = "registerMem";
	}
	// 아이디 비밀번호 검색창 으로 이동
	function tofindIdPw(){
		location.href = "findIdPw";
	}
	
</script>
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
<title>Insert title here</title>
</head>
<body>
	 <nav>
		<div class="testhead">
			<form>
				<ul>
					<li><a href="/project/main">홈</a></li>
					<li><a href="/project/ticket1">영화 예매</a></li>
					<li><a href="/search/searcher">영화 검색</a></li>
					<li><a href="/board/list?pageNum=1&amount=10">후기 게시판</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
				<div class="blank">
					<p></p>
				</div>
					<div class="logo">
						<a style="margin-bottom:30px; font-style:bold; font-size: 30px; color: black; text-decoration: none;" href="/project/main">
						NACHOBOX
						</a>
					</div>
				<div class="blank2">
					<p></p>
				</div>
				<ul> 
					<li><a href="/search/login">로그인</a></li>
					<li><a href="#">MY</a></li>
				</ul>
					<input type="text" name="value" placeholder="영화, 작품명, 감독, 배우를 검색해보세요." style="width: 300px; height: 20px;">
					<input type="button" value="검색" onclick="search_dynamic(this.form)">
			</form>
		</div>
	</nav>
	<br><br><br><br><br><br><br><br>
	
	<h1 class="centerForBlock">나쵸박스</h1>
	<br><br>
	<div class="centerForBlock">
		<form action="main" method="post">
			<table>
				<tr>
					<td>ID : </td>
					<td><input type="text" placeholder="아이디 입력"></td>
					<td rowspan ="2"><input type="button" value="LOGIN"></td>
				</tr>
				<tr>
					<td>PW : </td>
					<td><input type="text" placeholder="비밀번호 입력"></td>
				</tr>
			</table>
			<br><br><br>
			<div>
				<input type="button" value="ID/PW찾기" onclick ="tofindIdPw();">
				<input type="button" value="회원가입" onclick="toRegister();">
			</div>
		</form>
	</div>
	    <!-- footer 시작-->
	<div class="footer">
	  <hr>
      <p> 대표자 : 백건희 / 메일 : kunheeb@naver.com / 1지점 : 인천시 남동구 간석로 41길 10-14 청산그린맨션 1층</p>
      <p>2지점 : 서울시 구로구 시흥대로 163길 33 주호타워 2층 / 대표번호 : 010-3384-0780 / 문자 문의 : 010-3384-0780</p>
      <p>운영 시간 : 평일 06:00 - 24:00 / 토요일 08:00 - 18:00 / 일요일 휴무 <p>
      <p>COPYRIGHT © NACHOBOX ALL RIGHTS with Wix.com</p>
	</div>
    <!-- footer 끝-->
</body>
</html>