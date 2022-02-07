<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../include/headerTest.jsp" %>
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

@font-face {
  font-family: testFontCafeOh;
  src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}
.testFontCafeOh{font-family : "testFontCafeOh", serif;}


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

.input_t{
	border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
  width: 100%;
  height : 100%;
  padding: 0;
  border-width: 0;

}

.bTable {
  border : 1px solid black;
  border-collapse : collapse;
margin:auto;
height: 400px;
width: 700px;
}
._td{
 background-color: #F4EAB4;
}

.bTd {
  border : 1px solid black;
  border-collapse : collapse;
  
}

.btnarea{
	margin-top: 0.5%;
	text-align: center;
}	
	
.btnRepl{
	
}
.rTable{
  border : 1px solid black;
  border-collapse : collapse;
margin:auto;
height: 80px;
width: 700px;
}

.rTn{
  border : 1px solid black;
  border-collapse : collapse;
  width: 10%;
  
}

.rCont1{
	width: 60%;
}

.rCont2{
	width: 20%;
}

.rCont3{
	width: 50%;
}

.cTable{
	margin-top: 0.7%;
	border: 0px;
}


/* .regiBtn{
	border: 1px solid black;
	background-color: #FFFFFF;
		margin: auto;
	padding: 0.4%;
	font-weight: bold;
}
 .regiBtn:hover{border-color: red;} */

.DeleteReBo{
	border-bottom: none;
	border-right: none;
	border-top: none;
}

.DelReBo{
	width: 40px;
	height: 30px;
}

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
<script type="text/javascript" src="/resources/js/reply.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <h1 class="testFontGM"  style="text-align: center;">공지사항 조회</h1>
         <div class="contents">
         
         <table class="bTable">
	         <tr  >
		         <td rowspan=2; class="_td bTd testFontEDR">제목</td>
		         <td rowspan=2; > 
		         
		               <input class="form-control input_t aInput1 testFontEDR" name="title"  
		                  value="${notice.title }" readonly="readonly">
		           
	            </td>
		         <td class="_td bTd testFontEDR">작성자</td>
		         <td class="bTd">
		         
		               <input class="form-control input_t aInput1 testFontEDR" name="mid"
		                  value="${notice.mid }" readonly="readonly">
		           
		         </td>
	         </tr>
	         <tr>
		         <td class="_td bTd testFontEDR">글번호</td>
		         <td class="bTd ">
		          <input class="form-control input_t aInput1 testFontEDR" name="ntno"
                  value="${notice.ntno}" readonly="readonly"></td>
	         </tr>
	         
	         <tr>
	         	<td class="_td bTn testFontEDR">
	         		글내용
	         	</td>
	         	<td colspan="3" class="bTd ">
	         		<textarea class="form-control aInput2 testFontEDR" name="content"
                  readonly="readonly">${notice.content }</textarea>
	         	</td>
	         </tr>
         
         </table>

            <div class="btnarea">
            	<sec:authorize access = "hasRole('ROLE_ADMIN')">
					<button type="button" class="btn btn-primary testFontEDR regiBtn" data-oper="modify">수정</button>
                	<button type="button" class="btn btn-danger testFontEDR regiBtn" data-oper="remove">삭제</button>
				</sec:authorize>
            	<button type="button" class="btn btn-warning testFontEDR regiBtn" data-oper="list">목록으로 이동</button>
            </div>
            <form action="/notice/remove" method="post">
               <input type="hidden" name="pageNum" value="${cri.pageNum}">
               <input type="hidden" name="amount" value="${cri.amount}"> <input
                  type="hidden" name="${_csrf.parameterName}"
                  value="${_csfr.token }"> 
                  <input type="hidden" name="ntno" value="${notice.ntno}">
            </form>
          </div>
    <%@include file="../include/footerTest.jsp" %>        
            
<script type="text/javascript">
      $(function(){
         var pageNum = "${cri.pageNum}";
         var amount = "${cri.amount}";
         var ntnoValue = "${notice.ntno}"
         var replyStatus ="";
         $("#MyModal").hide();
         $("button").click(function(){
            var oper = $(this).data("oper");
            if(oper == undefined){
               return;
            }
            if(oper == 'list'){
               location.href="/notice/list?pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "modify"){
               location.href="/notice/modify?ntno=" + ntnoValue + "&pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "remove"){
               $("form").submit();
             }
            
         });
         
      });
   </script>
            
</body>
</html>