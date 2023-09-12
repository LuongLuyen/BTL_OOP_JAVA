<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleLogin.css' />" rel="stylesheet"
	type="text/css" media="all" />
<title>Home</title>
</head>
<body>
	<div class="login__app">
		<div class="title">
			<a class="login__navi" href="<c:url value='/home'/>">Đăng nhập </a>
		</div>
		<div class="login__form">
			<div class="form__wrap">
				<form class="form"  action="">
					<label for="fname">Tài khoản:</label><br> <input
						class="login__login" type="text" id="fname" name="fname"
						value="UserName"><br> <label for="lname">Mật khẩu:</label><br>
					<input class="login__login" type="text" id="lname" name="lname"
						value="Password"><br>
					<br>
					<button class="login__btn" type="submit">Login</button>
				</form>
			</div>

		</div>
	</div>
</body>
</html>