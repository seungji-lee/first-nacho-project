<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.footer{
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<link rel="stylesheet"  type= "text/css" href="../../../resources/css/bootstrap.min.css"/><!-- header 부트스트랩 -->
<title>Insert title here</title>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">


	//카카오 주소 api
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

		// 아이디 정규식
	function confirmId(){
			var regId = /^[0-9a-z]{6,16}$/;	
			var id = document.forms.myForm.id.value;
			var idWarning = document.getElementById("idWarning");
			if(!regId.exec(id)){
				idWarning.innerHTML = "아이디 : 6~16자, 소문자+숫자";
				idWarning.style.color = "red";
			}else{
				idWarning.innerHTML = "훌륭한 아이디네요";				
				idWarning.style.color = "blue";
			}
		}
	function checkPw(){
			// 비밀번호 정규식
			var regPw = /^[0-9a-zA-Z]{8,16}$/;
			var pw = document.forms.myForm.pw.value;
			var pwWarning = document.getElementById("pwWarning");
			if(!regPw.exec(pw)){
				pwWarning.innerHTML = "8~16자 영문 대 소문자,숫자를 사용하세요.";
				pwWarning.style.color = "red";
			}else{
				pwWarning.innerHTML = "훌륭한 비밀번호네요";				
				pwWarning.style.color = "blue";
			}
		}
	// 비밀번호 확인 정규식
	function showChPw(){
		var pw = document.forms.myForm.pw.value;
		var chPw = document.forms.myForm.chPw.value;
		var target = document.getElementById("chPwWarning");
		if(pw!=chPw){
			target.innerHTML = "비밀번호가 일치하지 않습니다.";
			target.style.color = "red";
		}else{
			target.innerHTML = "비밀번호 동일";				
			target.style.color = "blue";
		}
	}
	// 이메일 확인 정규식
	function isValidEmail(){
		var regEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		var emailWarning = document.getElementById("emailWarning");
		var email = document.forms.myForm.email.value;
		if (regEm.test(email) === true) {
			emailWarning.innerHTML = "올바른 형식의 이메일입니다.";
			emailWarning.style.color ="blue";	         
	     }else{
			emailWarning.innerHTML = "이메일 형식이 올바르지 않습니다.";			
			emailWarning.style.color ="red";
	     }
	}
	// 모든 폼 전달하기
	function ConfirmAll(){
		location.href = "/search/regDone";
	}
	
	// 취소하면 main으로 이동
	function moveToMain(){
		location.href = "/search/main";		
	}

</script>
<style type="text/css">
	.total-table{
		width : 70%;
		margin : auto;
	}
	h4{
		width: 15%;
		margin : auto;
		display : inline-block;
	}
	regExpln{
		width: 30%;
		margin : auto;
	}
	.firstCol{
		width: 110px;
		background-color : gray;
		bordercolor : gray;
		text-align : center;
	}
	.pnumSize{
		width: 30px;
	}
	.yearSize{
		width : 30px;
	}
	.monthDaySize{
		width : 15px;	
	}
	.zipcodeSize{
		width : 50px;
	}
	.addrSize{
		width: 280px;
	}
	.buttonCenter{
		width : 50%;
		margin : auto;		
	}
	  table, tr, td{
		border-collapse:collapse;
	}
	.midTd{
		width: 630px;
	}
	
			/*헤더 테스트 해보기*/
	body{
		background-color: #F6F0E3;
	}
	
	.testhead{
		padding: 20px;
		top: 0px;
		left: 0px;
		width: 100%;
		border: 1px black solid;
		background-color: #F5E797;
		color: black;
		position: fixed;
		/* padding: 10px 0; */
		
	}
	ul{
		padding: 0;
	}
	.testhead ul li{
		list-style: none;
		text-align: center;
		width: 100px;
		float: left;
		margin: auto;
		color: black;
		font-size: 18px;
	}
	.testhead ul li a{
		text-decoration: none;
		color: black;
	}
	.logo{
		float: left;
		margin: auto;
		padding: auto;
	}
	.blank{
		float: left;
		width: 340px;
		
	}
	.blank2{
		float: left;
		width: 250px;
	}
</style>
<body>
	 <nav>
		<div class="testhead">
			<form>
				<ul>
					<li><a href="/project/main">홈</a></li>
					<li><a href="/project/ticket1">영화 예매</a></li>
					<li><a href="/search/searcher">영화 검색</a></li>
					<li><a href="/board/list?pageNum=1&amount=10">후기 게시판</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
				<div class="blank">
					<p></p>
				</div>
					<div class="logo">
						<a style="margin-bottom:30px; font-style:bold; font-size: 30px; color: black; text-decoration: none;" href="/project/main">
						NACHOBOX
						</a>
					</div>
				<div class="blank2">
					<p></p>
				</div>
				<ul> 
					<li><a href="/search/login">로그인</a></li>
					<li><a href="#">MY</a></li>
				</ul>
					<input type="text" name="value" placeholder="영화, 작품명, 감독, 배우를 검색해보세요." style="width: 300px; height: 20px;">
					<input type="button" value="검색" onclick="search_dynamic(this.form)">
			</form>
		</div>
	</nav>
	<br><br><br><br><br><br>
	<div class="total-table">
		<h3>정보 입력</h3>
		<label>회원가입에 필요한 고객님의 정보를 입력해주세요.</label>		
	</div>
	<br><br>
	
	<div class="total-table">
		<form method="post" name="myForm">
			<table>
				<tr>
					<td class="firstCol">이름</td>
					<td class="midTd">
						&nbsp;&nbsp;&nbsp;<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<td class="firstCol">아이디</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="text" name="id" onchange="confirmId();">
						<input type="button" value="중복확인">
						<br>
						&nbsp;&nbsp;
						<span id="idWarning">필수 정보를 입력해주세요.</span>					
					</td>
				</tr>
				<tr>
					<td class="firstCol">비밀번호</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="password" name="pw" onchange="checkPw();">
						<br>
						&nbsp;&nbsp;
						<span id="pwWarning">비밀번호를 입력해주세요.</span>
					</td>
				</tr>
				<tr>
					<td class="firstCol">비밀번호 확인</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="password" name="chPw" onchange = "showChPw();">
						<br>
						&nbsp;&nbsp;
						<span id="chPwWarning">비밀번호 확인</span>
					</td>
				</tr>
				<tr>
					<td class="firstCol">생년월일</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input class="yearSize" type="text" name="year" onchange="chBirth();">년
						<input class="monthDaySize"type="text" name="month" onchange="chBirth();">월
						<input class="monthDaySize"type="text" name="day" onchange="chBirth();">일
						<br>
						&nbsp;&nbsp;
						<span id="birthWarning">년도는 4자리로 입력하세요</span>
					</td>
				</tr>
				<tr>
					<td class="firstCol">이메일</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="email" name="email" onchange="isValidEmail();">
						<br>
						&nbsp;&nbsp;
						<span id="emailWarning">이메일을 입력해주세요</span>
					</td>
				</tr>
				 <tr>
				 	<td class="firstCol">우편번호</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="text" id="sample6_postcode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">					
					</td>
				</tr>
				<tr>
					<td class="firstCol">집주소</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="text" id="sample6_address" class="addrSize" placeholder="주소">
					</td>
				</tr>
				<tr>
					<td class="firstCol">상세주소</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<input type="text" id="sample6_detailAddress" class="addrSize" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" placeholder="참고항목">
					</td>
				</tr>
				<tr>
					<td class="firstCol">휴대폰</td>
					<td class="midTd">
						&nbsp;&nbsp;
						<select name="pnum1">
							<option value="">없음</option>
							<option value="011">011</option>
							<option value="010">010</option>
							<option value="017">017</option>
						</select>
						-
						<input class="pnumSize" type="text" name="pnum2">
						-
						<input  class="pnumSize" type="text" name="pnum3">
					</td>
				</tr>
			</table>
			<br><br>
			<div class="buttonCenter">
				<input type="button" value="확인" onclick="ConfirmAll();">
				<input type="reset" value="취소" onclick="moveToMain();">
			</div>
		</form>
	</div>
	<br><br><br><br><br>
	    <!-- footer 시작-->
	<div class="footer">
	  <hr>
      <p> 대표자 : 백건희 / 메일 : kunheeb@naver.com / 1지점 : 인천시 남동구 간석로 41길 10-14 청산그린맨션 1층</p>
      <p>2지점 : 서울시 구로구 시흥대로 163길 33 주호타워 2층 / 대표번호 : 010-3384-0780 / 문자 문의 : 010-3384-0780</p>
      <p>운영 시간 : 평일 06:00 - 24:00 / 토요일 08:00 - 18:00 / 일요일 휴무 <p>
      <p>COPYRIGHT © NACHOBOX ALL RIGHTS with Wix.com</p>
	</div>
    <!-- footer 끝-->
</body>
</html>