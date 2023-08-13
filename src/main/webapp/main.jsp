<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
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
			<a class="navbar-brand" href="main.jsp"><img
				src="images/kfoodlogo.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="main.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="recipe.jsp">레시피</a></li>					
					<li class="nav-item"><a class="nav-link" href="bbs.jsp">커뮤니티</a></li>
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
							<li class="active"><a class="dropdown-item" href="login.jsp">로그인</a></li>
							<li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
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
							<li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
						</ul></li>
				</ul>
				<%
				}
				%>
			</div>
		</div>
	</nav>
	<div class="container" style="padding-top: 20px;">
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
				<li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
				<li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
				    <a href="recipe.jsp">
					<img src="images/01.jpg" class="d-block w-100 img-fluid" alt="Image 1">
				</div>
				<div class="carousel-item">
			    	<a href="recipe.jsp">
					<img src="images/02.jpg" class="d-block w-100 img-fluid" alt="Image 2">
				</div>
				<div class="carousel-item">
				<a href="recipe.jsp">
					<img src="images/03.jpg" class="d-block w-100 img-fluid" alt="Image 3">
				</a>
			</div>
			<a class="carousel-control-prev" href="#myCarousel" role="button"
				data-bs-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel" role="button"
				data-bs-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="visually-hidden">Next</span>
			</a>
		</div>
	</div>
	<div class="container" style="padding-top: 40px;">
		<h3 class="fw-bold fs-4">K-Food 인기 레시피</h3><hr>
		<a href="recipe.jsp">
		<img src="images/bestrecipe.jpg" class="d-block w-100">
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
					서비스 이용문의 : 070-4896-7979<br>
					<br> (주)케이푸드 / 사업자등록번호 777-77-00700 / 통신판매업신고 2023-서울금천-7707 /
					벤처기업확인 / 사업자정보확인<br> 서울지방중소기업청 제 07070077-1-07777호<br>
					<br> <span style="color: #999999; font-size: 12px;">&copy;
						케이푸드커뮤니티 Inc. All Rights Reserved</span>
				</div>
			</div>
	</footer>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>
