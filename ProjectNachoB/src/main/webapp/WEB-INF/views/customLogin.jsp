<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Custom Login Page</h1>
	<h2>${error }</h2>
	<h2>${logout }</h2>
	
	<!-- 로그인을 위한 form태그, 이번엔 내가 만든거 -->
	<form action="/login" method = "post">
		<div>
			아이디 : <input type="text" name="username" > <br>
			비밀번호 : <input type="password" name="password"> <br>
			<input type="checkbox" name="remember-me">아이디 기억하기<br>
			<input type="submit" value="전송">
			<!--  -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			<!-- token은 랜덤값, post값으로 넘길때 기본적으로 보안 목적으로 쓴다고 이해하면 됩니다 -->
			<!-- console에 hidden 값이 안찍히는 이유는 security context에 disable해 놓아서 그럼 -->	
		</div>
	</form>
</body>
</html>