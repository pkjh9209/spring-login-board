<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!--  banner -->
		<div class="row">
			<div class="jumbotron">
				<h1>글삭제하기</h1>
				<p>작성하신 글을 삭제 할수있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/freeboard/boardDeleteProc.do" method="POST">
				<h2>게시판 목록</h2>
				<input type="hidden" name="boardIdx" value="${delete.boardIdx}">
				<div class="row">
					<div class="col-sm-12">
						<p>글번호</p>
						<p>${delete.boardIdx}</p>
					</div>
					<div class="col-sm-12">
						<p>제목</p>
						<p>${delete.boardTitle}</p>
					</div>
					<div class="col-sm-12">
						<p>작성자</p>
						<p>${delete.writer}</p>
					</div>
					<div class="col-sm-12">
						<p>조회수</p>
						<p>${delete.hitView}</p>
					</div>
					<div class="col-sm-12">
						<p>날짜</p>
						<p>${delete.rgDate}</p>
					</div>
					<div class="col-sm-12">
						<p>내용</p>
						<p>${delete.boardContent}</p>
					</div>
				</div>
				<div class="col-sm-1">
					<a class="btn btn-primary" href="${path}/freeboard/index.do">목록으로</a>
				</div>
				<div class="col-sm-1">
					<input type="submit" class="btn btn-primary" value="삭제하기">
				</div>
			</form>
		</div>
	</div>
</body>
</html>

