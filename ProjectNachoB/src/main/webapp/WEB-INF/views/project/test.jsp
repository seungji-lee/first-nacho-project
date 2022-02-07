<%@page import="java.util.HashMap"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{                        /* *에 스타일을 줌으로써 전체적인 기본값 설정*/
		margin: 0;
		padding: 0;
	}
	
	.header{                     /* 맨위에 머리글 */
		background-color: black;
		color: white;
		font-weight: bold;
		padding: 50px;
		text-align: center;
		position: fixed;
		width: 100%;
		overflow: hidden;
		z-index: 3;              /* 스크롤해도 본문이랑 안겹치게 맨 위에 둔다*/
		font-size: 40px;
	}
	
	.ul1, .ul2{
		position: fixed;
		width: 100%;
		background-color: black;
		top: 120px;
		list-style-type: none;
		overflow: hidden;
		z-index: 3;              /* 스크롤해도 본문이랑 안겹치게 맨 위에 둔다*/
		color: white;
	}
	.ul1 li{
		float: left;
	}
	.ul2 li{
		float: right;
	}
	
	li a{
		display: block;
		text-align: center;
		width: 100px;
		padding: 20px;
		text-decoration: none;    /*링크표시(언더바) 없애기*/
		color: white;
		
	}
	table{
		text-align: center;
	}
	a{
		text-decoration: none;
	}
	.body{
		padding: 50px;
		position: absolute;
		top: 180px;
	}
	.mingtable{
		font-size: 20px;
		
	}
	#ticketing{
		background-color: red;
		font-size: 20px;
		color: white;
		width: 200px;
		height: 40px;
	}
</style>
</head>
<body>
	<div class="header">1조 프로젝트</div>
	<div>
	<ul class="ul1">
		<li><a href="#">영화 정보</a></li>
		<li><a href="#">예매하기</a></li>
		<li><a href="#">영화 추천</a></li>
		<li><a href="#">후기 게시판</a></li>
	</ul>
	<ul class="ul2">
		<li><a href="#">회원가입</a></li>
		<li><a href="#">로그인</a></li>
		<li><a href="#">검색 기능</a></li>
	</ul>
	</div>
	<div class="body">
		 <table class="mingtable">
      	<c:forEach items="${Ming }" var="movie">
      	<tr>
      		<td>
      		<a href="/project/get?mno=${movie.mno }"><img src = "../../resources/img/${movie.poster }" width="400px" height="450px" ></a><br>
      		<a href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
      		${movie.director }<br>
      		<input type="button" value="예매하기" id="ticketing">
      		</td> 
      		<td>
      		<a href="/project/get?mno=${movie.mno }"><img src = "../../resources/img/${movie.poster }" width="400px" height="450px" ></a><br>
      		<a href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
      		${movie.director }<br>
      		<input type="button" value="예매하기" id="ticketing">
      		</td> 
      		<td>
      		<a href="/project/get?mno=${movie.mno }"><img src = "../../resources/img/${movie.poster }" width="400px" height="450px" ></a><br>
      		<a href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
      		${movie.director }<br>
      		<input type="button" value="예매하기" id="ticketing">
      		</td> 
      		
      	</tr>
      	</c:forEach>
      </table><br>
	</div> 
	<br><hr>
</body>
</html>