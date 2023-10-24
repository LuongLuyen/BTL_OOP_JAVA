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
					<form action="<c:url value='/payment'/>" method="get">
						<input class="admin-input" type="submit" value="Tất cả">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="transport" value="Chờ thanh toán">
						<input type="hidden" name="type" value="transport"> <input
							class="admin-input" type="submit" value="Chờ thanh toán">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="transport" value="Vận chuyển">
						<input type="hidden" name="type" value="transport"> <input
							class="admin-input" type="submit" value="Vận chuyển">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="transport" value="Đang giao"> <input
							type="hidden" name="type" value="transport"> <input
							class="admin-input" type="submit" value="Đang giao">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="transport" value="Hoàn thành">
						<input type="hidden" name="type" value="transport"> <input
							class="admin-input" type="submit" value="Hoàn thành">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/payment'/>" method="post">
						<input type="hidden" name="transport" value="Đã hủy"> <input
							type="hidden" name="type" value="transport"> <input
							class="admin-input" type="submit" value="Đã hủy">
					</form>
				</div>
			</div>
			<div class="cart__main">
				<div class="cart__main-scroll">

					<c:forEach var="item" items="${ProductModel}">
						<div class="cart__main-item">
							<img class="cart__main-img" alt="cart" src="${item.thumbnail }">
							<div class="cart__main_content">
								<h3>${item.shortDescription }</h3>
								<div class="cart__main-price">
									<div>Phân loại hàng: T80 ĐEN LG VÀNG,XL 55-65kg</div>
									<div class="cart__main-total">đ ${item.price }</div>
								</div>
								<div>7 ngày trả hàng</div>
								<div>Số lượng: x1</div>
								<div class="cart__main-pay-item">Thanh toán</div>

							</div>
							<c:if test="${ empty item.transport }">
								<br />
								<form action="<c:url value='/payment'/>" method="post">
									<div class="button-cart">
										<input type="hidden" name="deleteId" value="${item.id }">
										<input type="hidden" name="type" value="delete"> <input
											class="admin-input" type="submit" value="Delete">
									</div>
								</form>
							</c:if>
							<c:if test="${not empty item.transport }">
								<br />
								<div class="cart__main-pay-item">${item.transport }</div>
							</c:if>

						</div>
					</c:forEach>
					<!-- <div class="cart__main-itemk">
						<h1 class="cart__main-dem">.</h1>
					</div> -->
				</div>
				<!-- <div class="cart__main-payment">
					<div class="cart__main-total">Thành tiền: đ 599.000</div>
					<div class="cart__main-pay">
						<div class="cart__main-pay-item">Liên hệ người bán</div>
						<div class="cart__main-pay-item">Thanh toán</div>
					</div>
				</div> -->
			</div>
		</div>
	</div>

</body>
</html>