<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@font-face {
	font-family: testFontGB;
	src: url('/resources/css/font/GmarketSansTTFBold.ttf');
}

.testFontGB {
	font-family: "testFontGB", serif;
}

@font-face {
	font-family: testFontGL;
	src: url('/resources/css/font/GmarketSansTTFLight.ttf');
}

.testFontGL {
	font-family: "testFontGL", serif;
}

@font-face {
	font-family: testFontGM;
	src: url('/resources/css/font/GmarketSansTTFMedium.ttf');
}

.testFontGM {
	font-family: "testFontGM", serif;
}

@font-face {
	font-family: testFontEDB;
	src: url('/resources/css/font/EliceDigitalBaeum_Bold.ttf');
}

.testFontEDB {
	font-family: "testFontEDB", serif;
}

@font-face {
	font-family: testFontEDR;
	src: url('/resources/css/font/EliceDigitalBaeum_Regular.ttf');
}

.testFontEDR {
	font-family: "testFontEDR", serif;
}

@font-face {
	font-family: testFontCafeOh;
	src: url('/resources/css/font/Cafe24Ohsquareair.ttf');
}

.testFontCafeOh {
	font-family: "testFontCafeOh", serif;
}

.contents {
	text-align: center;
}

textarea {
	resize: none;
	overflow-y: scroll;
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	height: 400px;
	width: 100%;
	padding: 0;
	border-width: 0;
}

.input_t {
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	width: 100%;
	height: 100%;
	padding: 0;
	border-width: 0;
}

.bTable {
	border: 1px solid black;
	border-collapse: collapse;
	margin: auto;
	height: 400px;
	width: 700px;
}

._td {
	background-color: #F4EAB4;
}

.bTd {
	border: 1px solid black;
	border-collapse: collapse;
}

.btnarea {
	margin-top: 0.5%;
	text-align: center;
}


.rTable {
	border: 1px solid black; border-collapse : collapse;
	margin: auto;
	height: 80px;
	width: 850px;
	border-collapse: collapse;
	
}

.rTn {
	border: 1px solid black;
	border-collapse: collapse;
	width: 10%;
}

.rTn1 {
	border-collapse: collapse;
	width: 10%;
}

.rCont1 {
	width: 60%;
}

.rCont2 {
	width: 20%;
}

.rCont3 {
	width: 50%;
}

.cTable {
	margin-top: 0.7%;
	border: 0px;
	
}

/* .regiBtn {
	border: 1px solid black;
	background-color: #FFFFFF;
	margin: auto;
	padding: 0.4%;
	font-weight: bold;
} */



.regiBtn1 {
	background-color: #FFFFFF;
	margin: auto;
	padding: 0.4%;
	font-weight: bold;
}
/* 
.regiBtn:hover {
	border-color: red; */
}

.DeleteReBo {
	border-bottom: none;
	border-right: none;
	border-top: none;
}

.DelReBo {
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

._tdThTest {
	background-color: #F4EAB4;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	width: 50px;
}

._tdTdTest{
	border-collapse: collapse;
	text-align: center;
	
}

._tdCont{
	width: 400px;
	text-align: center;
	padding-left: 10px;
	border-bottom: 1px solid #F0E9C5;
	padding-bottom:3px;
}
._tdCont1{
	width: 100px;
	text-align: left;
	padding-left: 10px;
	padding-right: 2px;
	padding-bottom:3px;
	border-bottom: 1px solid #F0E9C5;
	
}
._tdCont2{
	padding-right: 10px;
}

</style>
<title>Insert title here</title>

</head>
<body>
	<%@include file="../include/headerTest.jsp"%>
	<script type="text/javascript" src="/resources/js/reply.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<h1 class="testFontGM" style="text-align: center;">게시글 조회</h1>
	<div class="contents">

		<table class="bTable">
			<tr>
				<td rowspan=2; class="_td bTd testFontEDR">제목</td>
				<td rowspan=2;><input class="form-control input_t aInput1 testFontEDR"
					name="title" value="${board.title }" readonly="readonly"></td>
				<td class="_td bTd testFontEDR">작성자</td>
				<td class="bTd"><input class="form-control input_t aInput1 testFontEDR"
					name="mid" value="${board.mid }" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="_td bTd testFontEDR ">글번호</td>
				<td class="bTd "><input class="form-control input_t aInput1 testFontEDR"
					name="bno" value="${board.bno}" readonly="readonly"></td>
			</tr>

			<tr>
				<td class="_td bTn testFontEDR">글내용</td>
				<td colspan="3" class="bTd "><textarea
						class="form-control aInput2 testFontEDR" name="content" readonly="readonly">${board.content }</textarea>
				</td>
			</tr>

		</table>

		<div class="btnarea">

			<!-- <sec:authorize access = "hasRole('ROLE_ADMIN')">
               <button type="button" class="btn btn-primary testFontGL regiBtn" data-oper="modify">수정</button>
                   <button type="button" class="btn btn-danger testFontGL regiBtn" data-oper="remove">삭제</button>
            </sec:authorize> -->

			<sec:authentication property="principal" var="pinfo" />

			<sec:authorize access="isAuthenticated()">
				<c:if
					test="${pinfo.username eq board.mid or pinfo.username eq 'sunde1'}">
					<button type="button" class="btn btn-primary testFontEDR regiBtn"
						data-oper="modify">수정</button>
					<button type="button" class="btn btn-danger testFontEDR regiBtn"
						data-oper="remove">삭제</button>
				</c:if>
			</sec:authorize>

			<button type="button" class="btn btn-warning testFontEDR regiBtn"
				data-oper="list">목록으로 이동</button>
			<sec:authorize access="isAuthenticated()">
				<button id="addReplyBtn" onclick="location.href='#testFooter'" 
				class="btn btn-primary btn-xs pull-right btnRepl testFontEDR regiBtn" >댓글달기</button>
			</sec:authorize>
		</div>
		<form action="/board/remove" method="post">
			<input type="hidden" name="pageNum" value="${cri.pageNum}"> <input
				type="hidden" name="amount" value="${cri.amount}"> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csfr.token }">
			<input type="hidden" name="bno" value="${board.bno}">
		</form>
	</div>
	
		<div class="testFontEDB" style="font-size: x-large; margin-left: 400px; margin-top: 20px;">댓글 확인
			<hr style="width: 500px; border: 1px solid #F5AD00; float: right; margin-right: 500px; margin-top: 20px;"> </div>
	<div class='row'>
		<div class="col-lg-12">
			<!-- /.panel -->
			<div class="panel panel-default">




				<table class="testChat rTable cTable"
					style="border-spacing: 0 10px;">

				</table>
				<!-- /.panel .chat-panel -->
			</div>
		</div>
		<!-- ./end row -->
	</div>



	<hr
		style="width: 700px; border: 0px; height: 5px; background-color: #F5E797;">
	<!-- Modal -->
	<div class="modal fade" id="MyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" ari-hidden="true">&times;</button> -->
					<h4 class="modal-title" id="myModalLabel" style="margin-left: 27%;"></h4>
				</div>
				<div class="modal-body">

					<sec:authorize access="isAuthenticated()">
					<table class="rTable">
						<tr>
							<td class="rTn _td testFontEDR" style="text-align: center;">댓글</td>
							<td class="rTn rCont1 testFontCafeOh"><input
								class="form-control input_t aInput1 testFontEDR" name='reply' id="reply"
								value=''></td>
							<td class="rTn _td testFontEDR" style="text-align: center;">작성자</td>
							<td class="rTn rCont2 testFontCafeOh">
							<input
								class="form-control input_t aInput1 testFontEDR" name='replyer' id="replyer"
								value=<sec:authentication property="principal.member.mid"/>></td>
						</tr>
					</table>
					</sec:authorize>
				</div>
				<div class="modal-footer"
					style="margin-left: 67%; margin-top: 0.5%;">
					<!--            <button id='modalModBtn' type="button" class="btn btn-warning testFontGL regiBtn">수정</button>
            <button id='modalRemoveBtn' type="button" class="btn btn-danger testFontGL regiBtn">삭제</button> -->
					<button id='modalRegisterBtn' type="button"
						class="btn btn-primary testFontEDR regiBtn">등록</button>
					<button id='modalCloseBtn' type="button"
						class="btn btn-default testFontEDR regiBtn">취소</button>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	var principal = null;
	   // 권한이 있는지 먼저 물어본다.
	   <sec:authorize access="isAuthenticated()">
	   principal = '<sec:authentication property="principal.username"/>'; //인증 안되었을때 그냥쓰면 에러남
	   </sec:authorize>
	
      $(function(){
         var pageNum = "${cri.pageNum}";
         var amount = "${cri.amount}";
         var bnoValue = "${board.bno}"
         var replyStatus ="";
         $("#MyModal").hide();
         $("button").click(function(){
            var oper = $(this).data("oper");
            if(oper == undefined){
               return;
            }
            if(oper == 'list'){
               location.href="/board/list?pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "modify"){
               location.href="/board/modify?bno=" + bnoValue + "&pageNum=" + pageNum + "&amount=" + amount;
            }
            if(oper == "remove"){
               $("form").submit();
             }
            
         });
         
         //----------------댓글부분 S---------------//
         
         // 댓글 작성할 구역이 어디냐?
         var replyUL = $(".chat");   //여기다
         
         
         // 데이터 불러와서 댓글 처리하기   --> reply에 있는 getList를 불러와서 쓸것이다.
         showList();
         function showList(){
            replyService.getList({bno : bnoValue, page: pageNum}, function(list){   //매개변수 2개들어감 bno와 page
               
               var str =''; // HTML태그를 저장할 문자열 변수
               if (list == null || list.length ==0){
                  replyUL.html("");      // 비워줘라
                  return;
               }
               /*
            
              기존에는 data-rno = '"+list[i].rno +"' 댓글정보의 키 값이 되는 rno 값이 li 태그에 들어가 있었음
              그리고 버튼이 없는 상태
              
              for(var i=0; i<list.length; i++){
                  str += "<li class = 'left clearfix' data-rno = '"+list[i].rno +"'>";      // 배열로 인덱스[0] => 1번지
                  str +=    "<div>";
                  str +=       "<div class = 'header'>";   
                  str +=          "<strong class = 'primary-font'>작성자 : " + list[i].mname + "</strong> &nbsp; &nbsp; ";   
                  str +=          "<small class = 'pull-right text-muted'> 등록일 : "+ list[i].strRegdate +"</small>";
                  str +=       "</div>";                                 
                  str +=       "<p> 내용 : "+ list[i].reply + "</p>";      
                  str +=    "</div>";         
                  str += "</li>";         
               }
            */
            
            // 변경에서는 li 태그의 data-rno = '"+list[i].rno +"'가 사라지고
            // data-rno = '"+list[i].rno +"' 가 들어가있는 상태로 버튼이 추가됨
            
            // 아래 for 문은 게시글에 해당하는 댓글 목록이 존재할경우 데이터를 가져와서 화면에 보여주기 위해 
            // 자바 스크립트를 사용해서 html 형태로 만들어주기 위한 for문
            
            //var strTest = "";
            var strTest = '<tr><td style="border:none; "><br></td></tr>';
            
               for(var i=0; i<list.length; i++){
            	   strTest += '<tr>';
            	   strTest += '<td class="_tdThTest testFontEDR">댓글</td>';
            	   strTest += '<td class="_tdTdTest testFontEDR _tdCont">' + list[i].reply + '</td>';
            	   
            	   strTest += '<td class="_tdThTest testFontEDR">작성자</td>';
            	   strTest += '<td class="_tdTdTest testFontEDR _tdCont1">' + list[i].mid + '</td>';
            	   strTest += '<td class="_tdThTest testFontEDR">등록일</td>';
            	   strTest += '<td style="margin-left: 10px; padding-left: 10px;" class="testFontEDR _tdCont1 _tdCont2">' + list[i].strRegdate + '</td>';
            	   
            	   strTest += '<td class="testFontEDR">'
            	   if(principal == list[i].mid || principal == 'sunde1'){
            		   strTest += "<button class='testFontEDR' data-rno =' "+ list[i].rno + "'>삭제</button>"
            	   }
            			   strTest += '</td>';
            		   
            			   strTest += '</tr>';
                 	   strTest += '<tr><td style="border:none;"><br></td></tr>';
               }
                
               $(".testChat").html(strTest);
               ///replyUL.html(str);
            });   
         } // end showList()
         
         $("li").click(function(){
            var oper = $(this).data("oper");
            console.log(oper);
         });
        // 댓글 달기 버튼 클릭 이벤트      아래의 내용은 온클릭이벤트와 같은 내용임.
        $("#addReplyBtn").on("click", function(ReplyVo){
           $("#MyModal").show();
           $('#myModalLabel').text("댓글 등록");
           
           
           $('#reply').val("");
           $('#replyer').attr("readonly", "readonly");
            $('#replyDate').val(ReplyVo.strRegdate);
           $('#replyDate').attr("readonly","readonly");
            
           // $('#modalModBtn').hide();            // 수정 버튼 보이기
           // $('#modalRemoveBtn').hide();         // 삭제 버튼 보이기
            $('#modalRegisterBtn').show();      
            $('#modalCloseBtn').show();         
            
            
        });
        
        
       
         //모달창 E
         var rno;
       
      //기존 은 .chat 클래스 태그의 범위 안에서 li 태그를 클릭했을때 이벤트를 발생
      //  $(".chat").on("click", "li", function(e){
         
         
      //변경 은 .chat 클래스 태그의 범위 안에서 button 태그를 클릭했을때 이벤트를 발생
      // $(".chat").on("click", "button", function(e){
         
         
      $(".testChat").on("click", "button", function(e){
         //Reply 키값
         rno  = $(this).data("rno");
         var result = confirm('삭제 하시겠습니까?'); 
         
         if(result) { //yes location.replace('index.php'); 
             var param = {rno:rno, bno:bnoValue};
              replyService.remove(param, function(result){
                 //$("#MyModal").hide();
                  showList();
               });
         } 
   
         //참고하고 있는 reply.js의  function get() 을 호출
         
           /* replyService.get(rno, function(ReplyVo){      // vo객체가 받아온다.
               $('#myModalLabel').text("댓글 수정");
               $('#reply').val(ReplyVo.reply)
               $('#replyer').val(ReplyVo.mname)
                $('#replyer').attr("readonly", "readonly");   // 작성자 입력창 읽기 전용
                $('#replyDate').val(ReplyVo.strRegdate)
                $('#replyDate').closest("div").show();   // 작성일 입력 창 보이기
                $('#replyDate').attr("readonly", "readonly");   // 작성일 입력 창 읽기 전용
                
                $('#modalModBtn').show();            // 수정 버튼 보이기
                $('#modalRemoveBtn').show();         // 삭제 버튼 보이기
                $('#modalRegisterBtn').hide();      // 등록 버튼 숨기기
                $('#modalCloseBtn').hide();         // 취소 버튼 숨기기
            

                $("#MyModal").show();
             });*/ 
         
      });
         
         //댓글 수정버튼
        $("#modalModBtn").on("click", function(){
           console.log('댓글수정버튼');
            var modifyReply = {rno:rno, reply:$('#reply').val()};
            
            replyService.update(modifyReply, function(result){
               $("#MyModal").hide();
               showList();
            });
        });
        $("#modalRemoveBtn").on("click", function(){
           console.log('댓글삭제버튼');
           
 
           var param = {rno:rno, bno:bnoValue};
            replyService.remove(param, function(result){
               $("#MyModal").hide();
                showList();
             });
        });
        $("#modalRegisterBtn").on("click", function(){
           console.log('댓글등록버튼');
           var reply = {
                   bno: bnoValue,
                   reply: $('#reply').val(),
                   mid: $('#replyer').val()
             }
             replyService.add(reply, function(result){      // 첫번째는 들어가는 데이터, 두번째는 콜백함수
                $("#MyModal").hide();
                showList();
             }); 
        });
        $("#modalCloseBtn").on("click", function(){
           console.log('댓글취소버튼');
           $("#reply").val(""); 
           $("#MyModal").hide();
        });
         
         
         //----------------댓글부분 E---------------//
         

         
         
      });
   </script>
	<%@include file="../include/footerTest.jsp"%>
</body>
</html>