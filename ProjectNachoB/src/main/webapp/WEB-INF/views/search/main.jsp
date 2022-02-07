<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.left{
		float : left;
	}
	.oneLine{
		width: 120px;
		margin : auto;
		display: inline-block;
	}
	.searchBox{
		width : 230px;
	}
	.fixAtRight{
		width :300px;
		margin : auto;
		display : inline;
		float : right;
	}
</style>
<script type="text/javascript">
	function search_dynamic(f){
		f.action="/search/searcher";
		f.submit();
	}
</script>
</head>
<body>
	<div class="static-header">
		<h1>고정헤더입니다</h1>
		<form method = "get">
			<div class="FixAtRight">
				<input class="searchBox" type="text" name="value" placeholder = "영화,배우명,감독을 입력하세요" onclick = "search_dynamic(this.form)">
				<input type="button" value="검색" onclick = "search_dynamic(this.form)">			
			</div>
		</form>
	</div>
	<br><br><hr>
		<h3>속이 뻥! 뚫리는 액션영화</h3>
	<div class = "first-block">
			<c:forEach items="${list	 }" var="movie">
				<div class="oneLine">
					<img src="../../resources/images/${movie.poster }" alt = "poster image" width="120"><br>
					<%-- <label>${movie.title }</label> --%>				
				</div>
			</c:forEach>
	</div>
	    <!-- footer 시작-->
	<div class="footer">
      <p> 대표자 : 백건희 / 메일 : kunheeb@naver.com / 1지점 : 인천시 남동구 간석로 41길 10-14 청산그린맨션 1층</p>
      <p>2지점 : 서울시 구로구 시흥대로 163길 33 주호타워 2층 / 대표번호 : 010-3384-0780 / 문자 문의 : 010-3384-0780</p>
      <p>운영 시간 : 평일 06:00 - 24:00 / 토요일 08:00 - 18:00 / 일요일 휴무 <p>
      <p>COPYRIGHT © NACHOBOX ALL RIGHTS with Wix.com</p>
	</div>
    <!-- footer 끝-->
</body>
</html>