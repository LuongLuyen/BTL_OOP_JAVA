<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleAdmin.css' />" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value='/style/stylePaymentAndCart.css' />"
	rel="stylesheet" type="text/css" media="all" />
<title>Payment</title>
</head>
<body>
	<div class="admin__app">
		<div class="admin__title">
			<form action="<c:url value='/payment'/>" method="get">
				<input class="admin__title" type="submit" value="Đơn mua">
			</form>
		</div>

		<div class="admin__content">
			<div class="cart__nav">
				<h1 class="admin__nav-title">Trạng thái</h1>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="ao-so-mi"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Tất cả">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="ao-thun"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Chờ thanh toán">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="ao-polo"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Vận chuyển">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="ao-khoac"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Đang giao">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="quan-dui"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Hoàn thành">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="category" value="quan-dai"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Đã hủy">
					</form>
				</div>
			</div>
			<div class="cart__main">
				<div class="cart__main-scroll">

					<c:forEach var="item" items="${ProductModel}">
						<div class="cart__main-item">
							<img class="cart__main-img" alt="cart"
								src="${item.thumbnail }">
							<div class="cart__main_content">
								<h3>${item.shortDescription }</h3>
								<div class="cart__main-price">
									<div>Phân loại hàng: T80 ĐEN LG VÀNG,XL 55-65kg</div>
									<div>đ ${item.price }</div>
								</div>
								<div>7 ngày trả hàng</div>
								<div>Số lượng: x2</div>
							</div>
						</div>
					</c:forEach>
					<div class="cart__main-itemk">
						<h1 class="cart__main-dem">.</h1>
					</div>
				</div>
				<div class="cart__main-payment">
					<div class="cart__main-total">Thành tiền: đ 599.000</div>
					<div class="cart__main-pay">
						<div class="cart__main-pay-item">Liên hệ người bán</div>
						<div class="cart__main-pay-item">Thanh toán</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>