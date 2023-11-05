<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleLogin.css' />" rel="stylesheet"
	type="text/css" media="all" />
<title>Login</title>
</head>
<body>
	<div class="login__app">
		<div class="title">
			<a class="login__navi" href="">Đăng nhập </a>
		</div>
		<div class="login__form">
			<div class="form__wrap">
				<form class="form" action="<c:url value='/login'/>" method="post">
					<label for="fname">Tài khoản:</label><br> <input
						class="login__login" type="text" id="name" name="name"><br>
					<label for="lname">Mật khẩu:</label><br> <input
						class="login__login" type="text" id="password" name="password"><br>
					<br>
					<button class="login__btn" type="submit">Login</button>
				</form>
			</div>

		</div>
	</div>
</body>
</html>