<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset="UTF-8">
<title>k-food 커뮤니티</title>
</head>
<body>	
	<%
		session.invalidate(); //로그아웃
	%>
	<script>
		location.href = 'main.jsp'  //메인으로 이동
	</script>
</body>
</html>
