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
  padding: 0px;
  border-width: 0;

}

.aInput{
	border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
  width: 100%;
  height : 100%;
  padding: 0px;
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<%@include file="../include/headerTest.jsp"%>

	<h1 class="page-header testFontGM" style="text-align: center;">????????? ??????</h1>
	
	<form action="/board/register" method="post" role="form" name="frm1">
		
		<table >
	         <tr  >
		         <td class="_td testFontEDR">Title</td>
		         <td> 
			               <input class="form-control aInput aInput1 testFontEDR" name="title"  
			                  value="" >
		           
	            </td>
		         <td class="_td testFontEDR">?????????</td>
		         <td>
		               <input class="form-control aInput aInput1 testFontEDR" name="mid"
		                  value=<sec:authentication property="principal.member.mid"/> readonly="readonly">
		           
		         </td>
	         </tr>
	         
	         <tr>
	         	<td class="_td testFontEDR">
	         		?????????
	         	</td>
	         	<td colspan="3">
	         		<textarea class="form-control aInput2 testFontEDR" name="content" style="overflow: auto;"></textarea>
	         	</td>
	         </tr>
         
         </table>
		
		<div class="btnarea"> 
		<input type=button value="??????" class="testFontEDR " onclick="check_onclick()">
		<!-- <button type="submit" class="testFontEDR " onclick="check_onclick()">??????</button> -->
		<button type="reset" class="testFontEDR ">?????? ??????</button>
		<button type="button" data-oper="list" class="testFontEDR ">???????????? ??????</button>
		</div>
		<input class="aInput" type="hidden" name="pageNum" value="${cri.pageNum }"> <input class="aInput"
			type="hidden" name="amount" value="${cri.amount }"> <input class="aInput"
			type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		<!-- data-oper?????? ????????? ???????????? ???????????? ?????? -->
		<!-- <button type="button" class="btn btn-warning" data-oper="tmp">???????????? ??????</button> -->
		<!-- ????????? ?????? ????????? ?????????????????? ?????? -->
	</form>



	<script type="text/javascript">
	
	
	 function check_onclick(){
	      theForm=document.frm1;

	      if(theForm.title.value=="")

	      {
	          alert("????????? ??????????????????. ??????????????????.")
	          return theForm.title.focus();

	      }


	      if(theForm.content.value=="")

	      {
	          alert("??? ????????? ??????????????????. ??????????????????.")
	          return theForm.content.focus();

	      }
	  


	      // ?????? ????????? ???????????? ?????? ????????? ???????????? ????????? ???????????? ????????? submit() ?????? ????????? ?????? ?????? ?????????(action) ?????????.

	      theForm.submit();
	 }
	
	
	
		$(function() {
			var pageNum = "${cri.pageNum}";
			var amount = "${cri.amount}";

			// ----- ?????? ?????? ????????? start
			$("button").click(
					function() {
						var oper = $(this).data("oper");
						console.log(oper);
						if (oper == 'list') {
							location.href = "/board/list?pageNum=" + pageNum
									+ "&amount=" + amount;
						}
					});
			// ----- ?????? ?????? ????????? end

		});
	</script>
]
	
	
<%@include file="../include/footerTest.jsp"%>
</body>
</html>