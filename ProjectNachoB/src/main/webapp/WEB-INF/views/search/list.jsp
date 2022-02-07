<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.font-xsmall{ font-size : x-small;}
	.font-xxsmall{ font-size : xx-small;}
	.oneLine{
				width: 120px;
				margin : auto;
				display: inline-block;
			}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style>
    div {
    		margin-bottom:1000px;
    	}
    
</style>
<script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
<body>
	<h1>list 페이지 입니다.</h1>
	<br><hr><br>
	
	<div>
		<h3>${value}(으)로 검색 결과입니다.</h3>
		
		<!-- 이동 테스트용 -->
	    <button onclick="fnMove('1')">div1로 이동</button>
	    <button onclick="fnMove('2')">div2로 이동</button>
	    <button onclick="fnMove('3')">div3로 이동</button>
	    <div id="div1">div1</div>
	    <div id="div2">div2</div>
	    <div id="div3">div3</div>
	    <!-- 이동 테스트용 끝 -->

		<c:forEach items="${allList }" var="movie">
			<div class="oneLine">
				<img src="../../resources/images/${movie.poster }" alt = "poster image" width="120"><br>
				<label class="font-xsmall">${movie.title }</label><br>
				<label class="font-xxsmall">출연 ${movie.mainact1 }<br>${movie.mainact2 }</label><br>
				<label class="font-xxsmall">감독 ${movie.director }</label><br>				
				<%-- <label>${movie.title }</label> --%>
			</div>
		</c:forEach>
	</div>
</body>
</html>