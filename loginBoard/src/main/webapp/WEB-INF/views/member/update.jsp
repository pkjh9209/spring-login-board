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
				<h1>회원수정</h1>
				<p>회원정보를 수정할수 있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/member/updateProc.do" method="post" onsubmit="return numAdd()">
				<input type="hidden" id="userTel01" name="userTel" value=""/>
				<p>아이디</p>
				<div class="col-lg-12">
					<input class="form-control" type="text" name="userId" value="${upMember.userId}" readonly="readonly"/>
				</div>
				<p>이름</p>
				<div class="col-lg-12">
					<input class="form-control" type="text" name="userName" value="${upMember.userName}" readonly="readonly"/>
				</div>
				<p>비밀번호</p>
				<div class="col-lg-12">
					<input class="form-control" type="password" name="userPw" value="${upMember.userPw}"/>
				</div>
				<p>전화번호</p>
				<div class="col-lg-4">
					<input class="form-control" id="userTel02" type="text" name="userTel02" value="${upMember.userTel.substring(0,3)}" maxlength="3"/>
				</div>
				<div class="col-lg-4">
					<input class="form-control" id="userTel03" type="text" name="userTel03" value="${upMember.userTel.substring(3,7)}" maxlength="4"/>
				</div>
				<div class="col-lg-4">
					<input class="form-control" id="userTel04" type="text" name="userTel04" value="${upMember.userTel.substring(7,11)}" maxlength="4"/>
				</div>
				<input class="btn btn-primary mt-5 row" type="submit" value="회원수정"/>
			<script type="text/javascript" src="${memberInsertJs}"></script>
			</form>
		</div>
	</div>
</body>
</html>
