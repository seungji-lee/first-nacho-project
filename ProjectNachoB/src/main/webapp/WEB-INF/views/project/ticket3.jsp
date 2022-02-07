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
		height: 80px;
		/* border: 1px solid black; */
		text-align: center;
		margin: auto;
		padding-top: 30px;
	}
	.ticket-info{
		width: 1000px;
		/* border: 1px solid black; */
		text-align: center;
		margin: auto;
	}
	table {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	margin-left:15%;

}

table thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: black;
	border-bottom: 3px solid #F5AD00;
}

table tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
}

table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #F0E9C5;
}
	/* table{
		width: 800px;
		margin: auto;
		border-collapse: collapse;
		padding-top: 20px;
		margin-top: 20px;
	}
	tr, td, th{
		border: 1px solid black;
		text-align: center;
	} */
	.MoveMain{
		text-align: center;
		margin: auto;
	}
	
	.MoveMainBtn{
		background-color: #F6F0E3;
		border-radius: 5px;
		width: 200px;
		height: 50px;
		font-size: 20px;
	}
	
	#boardlist {
	width: 70%;
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

	<div class="ticket-head">
		<h2>예매가 완료되었습니다</h2>
	</div>
	<div class="ticket-info">
		<table id="boardlist">
			<thead>
				<tr>
					<th>아이디</th>
					<th>영화</th>
					<th>상영관</th>
					<th>상영 날짜</th>
					<th>상영 시간</th>
					<th>인원 수</th>
					<th>좌석 정보</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ticketInfo }" var="tkinfo">
	      	  	<tr>
	      		<td style="width: 200px">
	      			${tkinfo.mid }
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.title }
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.theater }
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.tkdate }
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.tktime }
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.tkpeople }명
	      		</td>
	      		<td style="width: 200px">
	      			${tkinfo.seat }
	      		</td>
	      		
	       	 	 </tr>
      		</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div class="MoveMain">
		<input class="MoveMainBtn" type="button" value="메인화면으로 이동" onclick="location.href = '/project/main'">
	</div>
	
<%@include file="../include/footerTest.jsp"%>
</body>
</html>