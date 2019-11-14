<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
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
				<h1>회원추가</h1>
				<p>회원을 추가하실수 있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/member/insertProc.do" method="post" onsubmit="return numAdd()">
				<input type="hidden" id="userTel01" name="userTel"/>
				<p>아이디</p>
				<div class="col-lg-12">
					<input class="form-control" type="text" name="userId"/>
				</div>
				<p>비밀번호</p>
				<div class="col-lg-12">
					<input class="form-control" type="password" name="userPw"/>
				</div>
				<p>이름</p>
				<div class="col-lg-12">
					<input class="form-control" type="text" name="userName"/>
				</div>
				<p>전화번호</p>
				<div class="col-lg-4">
					<input class="form-control" id="userTel02" type="text" name="userTel02"/>
				</div>
				<div class="col-lg-4">
					<input class="form-control" id="userTel03" type="text" name="userTel03"/>
				</div>
				<div class="col-lg-4">
					<input class="form-control" id="userTel04" type="text" name="userTel04"/>
				</div>
				<input class="btn btn-primary mt-5 row" type="submit" value="회원추가"/>
			<script type="text/javascript" src="${memberInsertJs}"></script>	
			</form>
		</div>
	</div>
</body>
</html>
