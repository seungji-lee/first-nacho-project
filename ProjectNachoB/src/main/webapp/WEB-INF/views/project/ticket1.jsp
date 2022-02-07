<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.ticket-head{
		width: 1000px;
		height: 100px;
		margin: auto;
		padding-top : 30px;
		/* border: 1px solid black; */
	}
	.ticket-body{
		width: 1000px;
		height: 1500px;
		margin: auto;
		/* border: 1px solid black; */
	}
	#ticketing{
		background-color: red;
		font-size: 20px;
		color: white;
		width: 200px;
		height: 40px;
		border: 0px;
		border-radius: 10px;
	}
	#ticketing:hover{
		background-color: black;
		color: red;
	}
	.ming{
		text-decoration: none;
		font-size:20px;
		color: black;			
	}
	.ticket-list1, .ticket-list2, .ticket-list3, .ticket-list4{
		text-align: center;
		margin: auto;
	}
	
	td{
	 	width: 400px;
	}
	
	#mingid:hover{
		transition: all 0.1s linear;
		transform: scale(1.2);
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


<!-- 	<div class="ticket-head">
		<h2>영화 예매</h2>
		<hr><br>
	</div> -->
	<div class="ticket-body">
		<div class="ticket-list1">
		<h3>현재 상영작</h3>
		<h5>포스터를 클릭하여 영화 정보를 확인하세요</h5>
		<hr><br>
		 <table>
       		<tr>
  			<c:forEach var="movie" items="${Ming }" end="2">
  				<td>
   				   <a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" width="200px" height="300px" style="border-radius: 10px;"></a><br>
   				   <a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
   				   평점 : ${movie.mpoint } / 5점<br>
   				   <input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
  				</td>
       		</c:forEach>
       		</tr>
    	</table> 
		</div><br><br><br>
		<div class="ticket-list2">
		 <table>
       		<tr>
  			<c:forEach var="movie" items="${Ming }" begin="3" end="5">
  				<td>
   				   <a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" width="200px" height="300px" style="border-radius: 10px;"></a><br>
   				   <a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
   				   평점 : ${movie.mpoint }<br>
   				   <input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
  				</td>
       		</c:forEach>
       		</tr>
    	</table> 
		</div><br><br><br>
		<div class="ticket-list3">
		 <table>
       		<tr>
  			<c:forEach var="movie" items="${Ming }" begin="6" end="8">
  				<td>
   				   <a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" width="200px" height="300px" style="border-radius: 10px;"></a><br>
   				   <a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
   				   평점 : ${movie.mpoint }<br>
   				   <input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
  				</td>
       		</c:forEach>
       		</tr>
    	</table> 
		</div><br><br><br>
		<div class="ticket-list4">
		 <table>
       		<tr>
  			<c:forEach var="movie" items="${Ming }" begin="9" end="11">
  				<td>
   				   <a class="ming" href="/project/get?mno=${movie.mno }"><img id="mingid" src = "../../resources/img/${movie.poster }" width="200px" height="300px" style="border-radius: 10px;"></a><br>
   				   <a class="ming" href="/project/get?mno=${movie.mno }">${movie.title }</a><br>
   				   평점 : ${movie.mpoint }<br>
   				   <input type="button" value="예매하기" id="ticketing" onclick="location.href = '/project/ticket2?mno=${movie.mno}'">
  				</td>
       		</c:forEach>
       		</tr>
    	</table> 
		</div><br><br><br>
	</div>

<%@include file="../include/footerTest.jsp"%>
</body>
</html>