<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<%@include file ="head.jsp" %>
</head>
<body>
	<div class="container">
<!--  menu -->
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">신입개발자</a>
					</div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="${path}">Home</a></li>
						<li><a href="${path}/freeboard/index.do?page=1&pageNum=10">Freeboard</a></li>
						<li><a href="${path}/member/index.do">Member</a></li>
						<c:if test="${user != null}">
							<li><a href="${path}/member/logout.do">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</nav>
		</div>	
<!--  광고 -->
		<div class="row">
			<div class="jumbotron">
				<h1>포트폴리오</h1>
				<p>신입개발자가 되고 싶습니다.</p>
			</div>
			<p>java jsp spring 순서대로배웠습니다.</p>
			<p>html css javascript jqeury 는 부족하지만 순서대로 학습중입니다.</p>
		</div>
<!-- body  -->
		<div class="row">
			<c:if test="${user == null}">
				<a class="btn btn-primary" href="${path}/member/insert.do">회원가입</a>
				<a class="btn btn-primary" href="${path}/member/login.do">로그인</a>
			</c:if>
			<c:if test="${user != null}">
				<p>${user.userId}님 환영합니다.</p>
				<form action="${path}/member/update.do" method="post">
					<input type="hidden" name="userId" value="${user.userId}" readonly="readonly">
					<input class="btn btn-primary" type="submit" value="회원수정">
				</form>
				<a class="btn btn-primary" href="${path}/member/delete.do">회원탈퇴</a>
			</c:if>
		</div>
	</div>
	
</body>
</html>