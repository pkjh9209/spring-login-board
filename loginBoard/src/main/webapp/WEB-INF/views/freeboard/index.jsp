<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<%@include file ="../head.jsp" %>
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
						<li><a href="${path}">Home</a></li>
						<li class="active"><a href="${path}/freeboard/index.do">Freeboard</a></li>
						<li><a href="${path}/member/index.do">Member</a></li>
					</ul>
				</div>
			</nav>
		</div>	
<!--  광고 -->
		<div class="row">
			<div class="jumbotron">
				<h1>자유게시판</h1>
				<p>mysql과 mybatis 를 이용하여 게시판을 구현했습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
		<form id="delefrm" action="${path}/member/delete.do">
			<h2>게시판 목록</h2>
			<table class="table table-hover">
				<tr>
					<th>번호</th><th>제목</th><th>이름</th><th>날짜</th><th>조회수</th>
				</tr>
	 			<c:forEach items="${list}" var="fb">
					<tr>
						<td>${fb.boardIdx}</td>
						<td><a href="${path}/freeboard/boardView.do?idx=${fb.boardIdx}">${fb.boardTitle}</a></td>
						<td>${fb.writer}</td>
						<td>${fb.rgDate}</td>
						<td>${fb.hitView}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="row">
				<div class="col-sm-1">
					<a class="btn btn-primary" href="${path}/freeboard/boardWrite.do">글작성하기</a>
				</div>
			</div>
		</form>
		</div>
	</div>
</body>
</html>
