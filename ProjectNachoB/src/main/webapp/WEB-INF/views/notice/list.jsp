<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

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

.pagination {
	padding-left: 0px;
}

.paginate_button {
	list-style: none;
	float: left;
	margin-left: 10px;
}

.pagination {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#searchStyle {
	text-align: right;
	margin: auto;
	padding: 0.5%;
	margin-right:15%;
}

#test {
	background: #F5E797;
	height: 50px;
}
/* 
.my_box {
	border: 1px solid black;
	background-color: #FFFFFF;
}
 .my_box:hover{border-color: red;} */

.regBtn {
	margin-top: 0.5%;
	margin-left:15%;
}
/*  .regBtn:hover{border-color: red;} */


#lineTest {
	text-align: right;
	
}

#lineTest1 {
	text-align: center;
	
}

#lineTest2 {
	text-align: left;
	
	
}

#noticelist {
	width: 70%;
}

a { 
	text-decoration:none 
} 
/* .space{
		width : 100%;
		height : 102px;
		background-color : pink;
	} */
	
	
</style>
</head>
<body>
	<%@include file="../include/headerTest.jsp"%>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
	<div>
		<h2 class="testFontGM" style="text-align: center; font-size: 30px;">???????????? ??????</h2>

		<div id="searchStyle">
			<select id="searchType" class="my_box">
				<option value="mid" class="testFontGL">??? ?????????</option>
				<option value="title" class="testFontGL">??????</option>
			</select> <input type="text" value="${pageMaker.cri.searchKeyword}"
				id="searchKeyword" class="my_box" />
			<button id="search" class="my_box" class="testFontEDR">??????</button>
		</div>

		<table id="noticelist">
			<thead>
				<tr>
					<th id="lineTest2" class="testFontEDB">#??????</th>
					<th style="width: 40%; text-align: center;" class="testFontEDB">??????</th>
					<th style="text-align: center;" class="testFontEDB">?????????</th>
					<th id="lineTest1" class="testFontEDB">?????????</th>
					<th id="lineTest1" class="testFontEDB">?????????</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="notice">
					<tr>
						<td class="testFontEDR"><c:out value="${notice.ntno }"></c:out></td>
						<td style=" text-align: center;"><a class="move testFontEDR" href="${notice.ntno}"> ${notice.title }</a></td>
						<td class="testFontEDR" style="text-align: center;">${notice.mid }</td>
						<td class="testFontEDR" style="text-align: center;"><fmt:formatDate value="${notice.regdate }"
								pattern="yyyy-MM-dd"></fmt:formatDate></td>
						<td class="testFontEDR" style="text-align: center;">${notice.updatedate }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<sec:authorize access = "hasRole('ROLE_ADMIN')">
			<button id="regBtn" class="testFontEDR regBtn">?????????</button>
		</sec:authorize>
		
		
		<div class="pull-right">
			<ul class="pagination">
				<c:if test="${pageMaker.prev }">
					<li class="paginate_button previous"><a
						href="${pageMaker.startPage-1 }">&lt;</a></li>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" step="1">
					<li
						class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':''}">
						<a href="${num }">${num }</a>
					</li>
				</c:forEach>
				<c:if test="${pageMaker.next }">
					<li class="paginate_button"><a href="${pageMaker.endPage+1 }">&gt;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	<%@include file="../include/footerTest.jsp"%>  
	<script type="text/javascript">
		$(function() {

			//???????????? - ????????????

			var result = "${result}";
			var amount = "${pageMaker.cri.amount}";
			var pageNum = "${pageMaker.cri.pageNum}";

			if (result != '') {
				checkModal(result);
			}
			$("#regBtn").click(
					function() {
						location.href = "/notice/register?pageNum=" + pageNum
								+ "&amount=" + amount;
					});
			//????????????
			$("#search").click(
					function() {
						var searchType = $('#searchType').val();
						var searchKeyword = $('#searchKeyword').val();
						location.href = "/notice/list?amount=" + amount
								+ "&pageNum=" + pageNum + "&searchType="
								+ searchType + "&searchKeyword="
								+ searchKeyword;
					});

			$(".paginate_button a").click(
					function(e) {
						// <a> ????????? ????????? ????????? ??????????????? ?????? ?????? ??????
						// ????????? ????????? ????????? ??????

						e.preventDefault();
						var nextPageNum = $(this).attr("href");
						location.href = "/notice/list?amount=" + amount
								+ "&pageNum=" + nextPageNum;
					});

			$(".move").click(
					function(e) {
						e.preventDefault();
						var ntno = $(this).attr("href");
						location.href = "/notice/get?amount=" + amount
								+ "&pageNum=" + pageNum + "&ntno=" + ntno;
					});

		});
		// ???????????? ??? ??? ????????? ??? ??? ????????????
		// history ????????? ??????({????????? ?????? ??????,} ???????????? ?????? ????????? ????????? ??????, ?????? url)
		history.replaceState({}, null, null);
		function checkModal(result) {
			if (result === '' || history.state) { // ???????????? ??????
				return;
			}
			if (result == 'success') {
				// ?????? ??????
				$(".modal-body").html("????????? ?????????????????????.");
			} else if (parseInt(result) > 0) {
				// ?????? 
				$(".modal-body").html("???????????? ?????????????????????.");
			}
			$("#myModal").modal("show");
		}
	</script>
</body>
</html>