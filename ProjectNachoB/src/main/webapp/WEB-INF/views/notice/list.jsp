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
		<h2 class="testFontGM" style="text-align: center; font-size: 30px;">공지사항 목록</h2>

		<div id="searchStyle">
			<select id="searchType" class="my_box">
				<option value="mid" class="testFontGL">글 작성자</option>
				<option value="title" class="testFontGL">제목</option>
			</select> <input type="text" value="${pageMaker.cri.searchKeyword}"
				id="searchKeyword" class="my_box" />
			<button id="search" class="my_box" class="testFontEDR">검색</button>
		</div>

		<table id="noticelist">
			<thead>
				<tr>
					<th id="lineTest2" class="testFontEDB">#번호</th>
					<th style="width: 40%; text-align: center;" class="testFontEDB">제목</th>
					<th style="text-align: center;" class="testFontEDB">작성자</th>
					<th id="lineTest1" class="testFontEDB">작성일</th>
					<th id="lineTest1" class="testFontEDB">수정일</th>
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
			<button id="regBtn" class="testFontEDR regBtn">글쓰기</button>
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

			//파라미터 - 매개변수

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
			//검색버튼
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
						// <a> 클릭시 페이지 이동이 이루어지지 않게 하기 위해
						// 기존에 설정된 이벤트 해제

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
		// 뒤로가기 할 때 문제가 될 수 있으므로
		// history 객체를 조작({정보를 담은 객체,} 뒤로가기 버튼 문자열 형태의 제목, 바꿀 url)
		history.replaceState({}, null, null);
		function checkModal(result) {
			if (result === '' || history.state) { // 뒤로가기 방지
				return;
			}
			if (result == 'success') {
				// 수정 삭제
				$(".modal-body").html("처리가 완료되었습니다.");
			} else if (parseInt(result) > 0) {
				// 삽입 
				$(".modal-body").html("게시글이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}
	</script>
</body>
</html>