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
<!--  광고 -->
		<div class="row">
			<div class="jumbotron">
				<h1>회원추가</h1>
				<p>회원을 추가하실수 있습니다.</p>
			</div>
		</div>
<!-- body  -->
		<div class="row">
			<form action="${path}/member/insertProc.do">
				아이디
				<input class="form-control" type="text" name="userId"/>
				비밀번호
				<input class="form-control" type="password" name="userPw"/>
				이름
				<input class="form-control" type="text" name="userName"/>
				전화번호
				<input class="form-control" type="text" name="userTel"/>
				<input class="btn btn-primary mt-5" type="submit" value="회원추가"/>
			</form>
		</div>
	</div>
</body>
</html>
