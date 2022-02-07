<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">


@font-face {
  font-family: testFontGB;
  src: url('/resources/css/font/GmarketSansTTFBold.ttf');
}
.testFontGB{font-family : "testFontGB", serif; }

@font-face {
  font-family: testFontGL;
  src: url('/resources/css/font/GmarketSansTTFLight.ttf');
}
.testFontGL{font-family : "testFontGL", serif;}

@font-face {
  font-family: testFontGM;
  src: url('/resources/css/font/GmarketSansTTFMedium.ttf');
}
.testFontGM{font-family : "testFontGM", serif;}

@font-face {
  font-family: testFontEDB;
  src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}
.testFontEDB{font-family : "testFontEDB", serif;}

@font-face {
  font-family: testFontEDR;
  src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}
.testFontEDR{font-family : "testFontEDR", serif;}





#test {
	background: #F5E797;
	height: 50px;
}

.contents{
	text-align: center;
	
}

textarea{
	resize: none;
	overflow-y: scroll;
	border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
	  height: 400px;
	  width : 100%;
  padding: 0;
  border-width: 0;

}

._inputs{
	border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
  width: 100%;
  height : 100%;
  padding: 0;
  border-width: 0;

}

table {
margin:auto;
height: 400px;
width: 700px;
}
._td{
 background-color: #F4EAB4;
 text-align: center;
}

table, td {
  border : 1px solid black;
  border-collapse : collapse;
  
}

._btnarea{
	margin-top: 0.5%;
	text-align: center;
}	

/* .regiBtn{
	border: 1px solid black;
	background-color: #FFFFFF;
		margin: auto;
	padding: 0.4%;
	font-weight: bold;
}
	.regiBtn:hover{border-color: red;}
	.space{
			width : 100%;
			height : 102px;
			background-color : pink;
		} */
		
		
		.aInput1 {
	padding-left: 7px;
	padding-top: 1px;
	width: 96%;
}
.aInput2 {
	padding-left: 7px;
	padding-top: 5px;
	width: 98%;
}


</style>
<title>Insert title here</title>
</head>
<body>
<%@include file="../include/headerTest.jsp"%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 	<div class="space"></div>
 -->	
	<h1 class="page-header testFontGM" style="text-align: center;">공지사항 등록</h1>
	
	<form action="/notice/register" method="post" role="form">
		
		<table >
	         <tr  >
		         <td class="_td testFontEDR">Title</td>
		         <td> 
			               <input class="form-control testFontEDR _inputs aInput1" name="title" value="">
		           
	            </td>
		         <td class="_td testFontEDR">작성자</td>
		         <td>
		               <input class="form-control _inputs aInput1 testFontEDR" name="mid"
		                  value=<sec:authentication property="principal.member.mid"/> readonly="readonly">
		           
		         </td>
	         </tr>
	         
	         <tr>
	         	<td class="_td testFontEDR">
	         		글내용
	         	</td>
	         	<td colspan="3">
	         		<textarea class="form-control aInput2 testFontEDR" name="content" ></textarea>
	         	</td>
	         </tr>
         
         </table>
		
		<div class="_btnarea">
		<button type="submit" class="testFontEDR regiBtn">등록</button>
		<button type="reset" class="testFontEDR regiBtn">다시 작성</button>
		<button type="button" data-oper="list" class="testFontEDR regiBtn">목록으로 이동</button>
		</div>
		<input type="hidden" class="_inputs" name="pageNum" value="${cri.pageNum }"> <input
			type="hidden" class="_inputs" name="amount" value="${cri.amount }"> <input
			type="hidden" class="_inputs" name="${_csrf.parameterName }" value="${_csrf.token }">
		<!-- data-oper라는 임의의 속성값을 부여하는 방법 -->
		<!-- <button type="button" class="btn btn-warning" data-oper="tmp">목록으로 이동</button> -->
		<!-- 다양한 값을 담아서 스크립트에서 처리 -->
	</form>
	<%@include file="../include/footerTest.jsp" %>
	<script type="text/javascript">
		$(function() {
			var pageNum = "${cri.pageNum}";
			var amount = "${cri.amount}";

			// ----- 버튼 클릭 이벤트 start
			$("button").click(
					function() {
						var oper = $(this).data("oper");
						if (oper == 'list') {
							location.href = "/notice/list?pageNum=" + pageNum
									+ "&amount=" + amount;
						}
					});
			// ----- 버튼 클릭 이벤트 end

		});
	</script>
</body>
</html>