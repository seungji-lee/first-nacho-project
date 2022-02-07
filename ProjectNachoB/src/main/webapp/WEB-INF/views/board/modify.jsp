<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

.aInput{
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
}

table, td {
  border : 1px solid black;
  border-collapse : collapse;
  
}

.btnarea{
	margin-top: 0.5%;
	text-align: center;
}	
	
.regiBtn{
	border: 1px solid black;
	background-color: #FFFFFF;
		margin: auto;
	padding: 0.4%;
	font-weight: bold;
}
 .regiBtn:hover{border-color: red;}
	
	
	
	.aInput1{
	padding-left: 7px;
	padding-top: 1px;
	width: 96%;
}
.aInput2{
	padding-left: 7px;
	padding-top: 5px;
	width: 98%;
}


</style>

<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<%@include file="../include/headerTest.jsp"%>
<div class="row">
	<div class="col-lg-12">

		<h1 class="page-header testFontGM" style="text-align: center;">게시글 수정</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/board/modify" method="post">
					<table >
	         <tr  >
		         <td rowspan=2; class="_td testFontEDR">Title</td>
		         <td rowspan=2;> 
		         
		               <input class="form-control aInput aInput1 testFontEDR" name="title"  
		                  value="${board.title }" >
		           
	            </td>
		         <td class="_td testFontEDR">작성자</td>
		         <td>
		         
		               <input class="form-control aInput aInput1 testFontEDR" name="mid"
		                  value="${board.mid }" readonly="readonly">
		           
		         </td>
	         </tr>
	         <tr>
		         <td class="_td testFontEDR">글번호</td>
		         <td>
		          <input class="form-control aInput aInput1 testFontEDR" name="bno"
                  value="${board.bno}" readonly="readonly"></td>
	         </tr>
	         
	         <tr>
	         	<td class="_td testFontEDR">
	         		글내용
	         	</td>
	         	<td colspan="3">
	         		<textarea class="form-control aInput2 testFontEDR" name="content"
                  >${board.content }</textarea>
	         	</td>
	         </tr>
         
         </table>
         				<div class="btnarea">
						<button type="button" class="btn btn-primary testFontEDR " data-oper="modify">수정</button>
						<button type="button" class="btn btn-warning testFontEDR " data-oper="list">목록으로 이동</button>
						</div>
						<input class="aInput" type="hidden" name="pageNum" value="${cri.pageNum }">
						<input class="aInput" type="hidden" name="amount" value="${cri.amount }">
						<input class="aInput" type="hidden" name="${_csrf.parameterName}" value="${_csfr.token }">
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
</div>

 <script type="text/javascript">
    $(function(){
    	var pageNum = "${cri.pageNum}";
        var amount = "${cri.amount}";
    	var f = $("form");
    	
    	$("button").click(function(e){ // 버튼 클릭 이벤트
    		// 버튼 타입 클릭시 submit() 이벤트와 click() 이벤트를 동시에 진행할 수 있다.
    		// e.preventDefault() 메소드를 이용하여 기존에 설정된 이벤트 해제(submit)
    		e.preventDefault();
    		var oper = $(this).data("oper");
    		if(oper == 'list'){
    			location.href="/board/list?pageNum=" + pageNum + "&amount=" + amount;
    		}else if(oper == "modify"){
    			f.submit();
    		}
    		
    	});
    });
    
    
 </script>
		<%@include file="../include/footerTest.jsp"%>		
</body>
</html>