<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/custom.css">
<title>k-food 커뮤니티</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int pageNumber = 1; //현재 게시판이 몇번째 페이지인지 알려주는 함수 //기본 1페이지
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
					<li class="nav-item"><a class="nav-link" href="recipe.jsp">레시피</a></li>
					<li class="nav-item"><a class="nav-link active" href="bbs.jsp">커뮤니티</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<%
					if (userID == null) {
					%>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">접속하기<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
							<li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
						</ul></li>
					<%
					} else {
					%>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">회원관리<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
						</ul></li>
					<%
					}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container" style="padding-top: 40px;">
		<div class="row">
			<h3 style="text-align: center;">커뮤니티</h3>
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 가지고온 목록 출력 -->
					<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></a></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
		+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<div class="text-start">
				<a href="write.jsp" class="btn btn-success">글쓰기</a>
			</div>
			<div class="text-end">
				<%
				if (pageNumber != 1) {
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
					class="btn btn-success">이전</a>
				<%
				}
				if (bbsDAO.nextPage(pageNumber + 1)) {
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
					class="btn btn-success">다음</a>
				<%
				}
				%>
			</div>
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
