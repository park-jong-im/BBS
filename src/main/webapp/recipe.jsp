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
<style>
.card {
	margin-bottom: 20px;
	margin-right: 20px;
}
</style>
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
					<li class="nav-item"><a class="nav-link" href="main.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="recipe.jsp">레시피</a></li>
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
		<div class="row justify-content-center">
			<div class="card" style="width: 18rem;">
				<img src="images/1_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">잡채 만드는 법</h5>
					<p class="card-text">불지않는 당면~ 느끼함을 줄인 쉽고 간단한 잡채 만들기....</p>
					<p class="card-text">
						<span class="text-danger">☆★★★★</span> 조회수 71.6만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6905889"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/2_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">알타리김치 한가지면 반찬걱정끝</h5>
					<p class="card-text">
						알타리김치 담그기 어렵지 안아요....<br> <span class="text-danger">★★★★★</span>
						조회수 71.6만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6868496"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>


			<div class="card" style="width: 18rem;">
				<img src="images/3_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">LA갈비를 이용한 갈비찜</h5>
					<br>
					<p class="card-text">
						부드럽고 조리시간을 단축시켜 집에서 만들어 먹기 좋아요....<br> <span
							class="text-danger">★★★★★</span> 조회수 3.4만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6829733"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/4_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">라볶이 황금레시피</h5><br>
					<p class="card-text">
						간장양념이라 맵지않고 맛있는....<br> <span class="text-danger">☆☆★★★</span>
						조회수 1.5만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6899861"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/6_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">한국식 치킨 후라이드 & 양념치킨</h5>
					<br>
					<p class="card-text">
						한국에서 먹는 그대로....<br> <span class="text-danger">★★★★★</span>
						조회수 1만.
					</p>
					<a href="https://www.10000recipe.com/recipe/354868"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/5_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">하루 안 재우고 불고기 만들기</h5>
					<p class="card-text">
						간장양념이라 맵지않고 맛있는....<br> <span class="text-danger">☆★★★★</span>
						조회수 2,294.
					</p>
					<a href="https://www.10000recipe.com/recipe/6973784"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/7_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">언제먹어도 맛있는 김치찌개 황금레시피</h5>
					<p class="card-text">
						간장양념이라 맵지않고 맛있는....<br> <span class="text-danger">★★★★★</span>
						조회수 2.5만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6910807"
						class="btn btn-success">레시피 보러가기</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="images/8_1.jpg" class="card-img-top mt-3" alt="...">
				<div class="card-body">
					<h5 class="card-title fw-bold">감자전 쫀득쫀득 맛있게 만드는 법</h5><br>
					<p class="card-text">
						속은 쫀득 겉은 바삭....<br> <span class="text-danger">★★★★★</span>
						조회수 15만.
					</p>
					<a href="https://www.10000recipe.com/recipe/6915156"
						class="btn btn-success">레시피 보러가기</a>
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
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
				crossorigin="anonymous"></script>
</body>
</html>
