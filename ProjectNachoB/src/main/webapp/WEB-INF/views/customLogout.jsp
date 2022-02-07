<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>custom Logout Page</h1>
	
	<form action="/customLogout" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		<input type="submit">
	</form>
	<!-- post이면 뭔가를 딱히 걸지않아도 프로그램이 자동으로 걸어준다. get으로 할려면 Handler를 걸어줘야한다. logoutSuccessHandler 걸어주면 된다 -->
</body>
</html>