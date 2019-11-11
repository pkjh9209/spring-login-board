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
						<li><a href="${path}/freeboard/index.do">Freeboard</a></li>
						<li class="active"><a href="${path}/member/index.do">Member</a></li>
					</ul>
				</div>
			</nav>
		</div>	
<!--  banner -->
		<div class="row">
			<div class="jumbotron">
				<h1>글수정하기</h1>
				<p>글을 수정 할수있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/freeboard/boardUpdateProc.do" method="post">
				<h2>게시판 목록</h2>
				<div class="row">
					<div class="col-sm-12">
						<p>글번호</p>
						<input class="form-control" type="hidden" name="boardIdx" value="${upView.boardIdx}">
					</div>
					<div class="col-sm-12">
						<p>제목</p>
						<input class="form-control" type="text" name="boardTitle" value="${upView.boardTitle}">
					</div>
					<div class="col-sm-12">
						<p>내용</p>
						<input class="form-control" type="text" name="boardContent" value="${upView.boardContent}">
					</div>
					<div class="col-sm-12">
						<p>작성자</p>
						<p>${bdView.write}</p>
					</div>
				</div>
				<div class="col-sm-1">
					<a class="btn btn-primary" href="${path}/freeboard/index.do">목록으로</a>
				</div>
				<div class="col-sm-1">
					<input type="submit" class="btn btn-primary" value="수정완료">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
