<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleAdmin.css' />" rel="stylesheet"
	type="text/css" media="all" />
<title>Admin</title>
</head>
<body>
	<div class="admin__app">
		<div class="admin__title">
			<form action="<c:url value='/admin'/>" method="get">
				<input class="admin__title" type="submit" value="Trang quản trị">
			</form>
		</div>
		<div class="admin__filter">
			<div class="filter__admin">
				<div class="filter__btn">Xắp xếp theo:</div>
			</div>
			<div class="filter__admin">
				<div class="filter__btn">Mới nhất</div>
			</div>
			<div class="filter__admin">
				Giá: <select class="filter__input">
					<option>Cao đến thấp</option>
					<option>Thấp đến cao</option>
				</select>
			</div>
			<div class="filter__admin">
				<input class="filter__input" placeholder="Tìm kiếm" /> <span
					class="search">Filter</span>
			</div>
			<div class="filter__admin">
				<div class="filter__btn">
					<a href="<c:url value='/edit'/>"> Thêm sản phẩm</a>
				</div>
			</div>
		</div>
		<div class="admin__content">
			<div class="admin__nav">
				<h4 class="admin__nav-item">Danh mục</h4>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ao-nam"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Quần áo nam">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ti-vi"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Tivi">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="dien-thoai"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Điện thoại">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="lap-top"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Laptop">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="tai-nghe"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Tai nghe">
					</form>
				</div>
			</div>
			<div class="admin__main">
				<table style="width: 100%">
					<tr>
						<th>Tên sản phẩm</th>
						<th>Giá</th>
						<th>Trạng thái</th>
						<th class="thao__tacf">Sữa</th>
						<th class="thao__tacd">Xóa</th>
					</tr>
					<c:forEach var="item" items="${ProductModel}">
						<tr>
							<td>${item.shortDescription}</td>
							<td>${item.price}</td>
							<td>${item.status}</td>
							<th class="thao__tacf"><a class="thao__tacf"
								href="<c:url value='/edit'/>">✎</a></th>
							<th class="thao__tacd">
								<form action="<c:url value='/admin'/>" method="post">
									<input type="hidden" name="delete" value="${item.id}">
									<input type="hidden" name="type" value="delete"> <input
										type="submit" value="Delete">
								</form>
							</th>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>