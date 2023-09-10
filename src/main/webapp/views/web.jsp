<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleWeb.css' />" rel="stylesheet"
	type="text/css" media="all" />
<title>Home</title>
</head>
<body>
	<div class="web__app">
		<div class="web__header">
			<div class="web__logo">Logo</div>
			<div class="web__search">
				<input placeholder="Tìm kiếm" class="web__search-input" /> <span
					class="search-btn">🔍</span>
			</div>
			<div class="web__user">
				<span>Đăng nhập </span> <span>|</span> <span>Đăng ký</span>
			</div>
		</div>
		<div class="web__main">
			<div class="web__nav">
				<h1>Category</h1>
				<div class="web__category">San pham</div>
				<div class="web__category">San pham</div>
				<div class="web__category">San pham</div>
				<div class="web__category">San pham</div>
			</div>
			<div class="web__content">
				<div class="web__swiper">Swiper</div>
				<div class="web__product">
					<div class="web__product-item">product</div>
					<div class="web__product-item">product</div>
					<div class="web__product-item">product</div>
					<div class="web__product-item">product</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>