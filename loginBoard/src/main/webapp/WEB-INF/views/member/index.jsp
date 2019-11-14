<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<%@include file ="../head.jsp" %>
	<script type="text/javascript">
		function dodelete() {
			alert("삭제누름");
			$("#delefrm").submit();
		}
	</script>
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
			<table class="table table-hover table-bordered">
				<tr>
					<th>체크</th><th>번호</th><th>이름</th><th>나이</th><th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="fb">
					<tr>
						<td><input type="checkbox" name="idx" value="${fb.idx}"/></td>
						<td>${fb.idx}</td>
						<td>${fb.name}</td>
						<td>${fb.age}</td>
						<td>${fb.rgdate}</td>
						<td><a class="btn btn-primary" href="${path}/member/update.do?idx=${fb.idx}">수정</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="row">
				<div class="col-sm-1">
					<a class="btn btn-primary" href="${path}/member/insert.do">회원추가</a>
				</div>
					<div class="col-sm-1">
					<button type="button" class="btn btn-primary" onclick="dodelete();">회원삭제</button>
				</div>
			</div>
		</form>
		</div>
	</div>
</body>
</html>
