<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<title>k-food 커뮤니티</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"><img
				src="images/kfoodlogo.png"></a>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="main.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="recipe.jsp">레시피</a></li>
					<li class="nav-item active"><a class="nav-link" href="bbs.jsp">커뮤니티</a></li>
				</ul>
				<%
				if (userID == null) {
				%>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">접속하기<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="dropdown-item"
								href="login.jsp">로그인</a></li>
							<li class="nav-item"><a class="dropdown-item"
								href="join.jsp">회원가입</a></li>
						</ul></li>
				</ul>
				<%
				} else {
				%>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">회원관리<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="dropdown-item"
								href="logoutAction.jsp">로그아웃</a></li>
						</ul></li>
				</ul>
				<%
				}
				%>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="bbsTitle" maxlength="70"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-success pull-right" value="글쓰기">
			</form>
		</div>
	</div>
	<footer class="container-fluid bg-light"
		style="padding-top: 20px; padding-bottom: 20px;">
		<div class="row">
			<div class="col text-center">
				<a href="#">회사소개</a> | <a href="#">광고문의</a> | <a href="#">개인정보처리방침</a>
				| <a href="#">이용약관</a> | <a href="#">고객센터</a>
			</div>
		</div>
		<div class="row">
			<div class="row">
				<div class="col text-center"
					style="color: #999999; font-size: 12px;">
					대표 : 박종임 / E : help@kfood.com / F : 02) 777-7979<br> 서울 금천구
					가산동 337-50 에이스하이엔드타워 7차<br> 문의전화(운영시간 평일 10:00~18:00)<br>
					서비스 이용문의 : 070-4896-7979<br> <br> (주)케이푸드 / 사업자등록번호
					777-77-00700 / 통신판매업신고 2023-서울금천-7707 / 벤처기업확인 / 사업자정보확인<br>
					서울지방중소기업청 제 07070077-1-07777호<br> <br> <span
						style="color: #999999; font-size: 12px;">&copy; 케이푸드커뮤니티
						Inc. All Rights Reserved</span>
				</div>
			</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
