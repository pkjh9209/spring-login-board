<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<%@include file ="../head.jsp" %>
	<spring:url value="/resources/js/memberInsert.js" var="memberInsertJs"></spring:url>
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
				<h1>회원탈퇴</h1>
				<p>회원정보를 수정할수 있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/member/delete.do" method="post">
				<p>아이디</p>
				<div class="col-lg-12">
					<input class="form-control" type="text" name="userId" value="${user.userId}" readonly="readonly"/>
				</div>
				<p>비밀번호 확인</p>
				<div class="col-lg-12">
					<input class="form-control" type="password" name="userPw"/>
				</div>
				<c:if test="${msg == false}">
					<p>입력하신 비밀번호가 잘못되었습니다.</p>
				</c:if>
				<input class="btn btn-primary mt-5 row" type="submit" value="회원탈퇴"/>
			</form>
		</div>
	</div>
</body>
</html>
