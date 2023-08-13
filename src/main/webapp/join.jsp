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
					<li class="nav-item"><a class="nav-link" href="main.jsp">커뮤니티</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">접속하기<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="dropdown-item"
								href="login.jsp">로그인</a></li>
							<li class="nav-item"><a class="dropdown-item active"
								href="join.jsp">회원가입</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 회원가입 화면 -->
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top: 20px;">
					<form method="post" action="joinAction.jsp">
						<h3 style="text-align: center;">회원가입</h3>
						<div class="form-group" style="padding-top: 20px;">
							<input type="text" class="form-control" placeholder="아이디"
								name="userID" maxlength="20">
						</div>
						<div class="form-group" style="padding-top: 20px;">
							<input type="password" class="form-control" placeholder="비밀번호"
								name="userPassword" maxlength="20">
						</div>
						<div class="form-group" style="padding-top: 20px;">
							<input type="text" class="form-control" placeholder="이름"
								name="userName" maxlength="20">
						</div>
						<div class="form-group" style="text-align: center;">
							<div class="btn-group" data-toggle="buttons"
								style="padding-top: 20px;">
								<label class="btn btn-success active"> <input
									type="radio" name="userGender" autocomplete="off" value="남자"
									checked>남자
								</label> <label class="btn btn-success"> <input type="radio"
									name="userGender" autocomplete="off" value="여자">여자
								</label>
							</div>
						</div>
						<div class="form-group" style="padding-top: 20px;">
							<input type="email" class="form-control" placeholder="이메일"
								name="userEmail" maxlength="20">
						</div>
						<div class="form-group" style="padding-top: 10px;">
							<input type="submit" class="btn btn-success form-control"
								value="회원가입" style="height: 45px;">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid bg-light"
		style="padding-top: 20px; padding-bottom: 20px; margin-top: 170px;">
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
