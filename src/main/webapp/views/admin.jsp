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
			<form action="<c:url value='/admin'/>" method="post">
				<div class="filter__admin">
					<div class="filter__btn">
						<input type="hidden" name="newProduct" value="4"> <input
							type="hidden" name="sortSC" value="DESC"> <input
							type="hidden" name="type" value="sort"> <input
							class="admin-input" type="submit" value="Mới nhất">
					</div>
				</div>
			</form>
			<form action="<c:url value='/admin'/>" method="post">
				<div class="filter__admin">
					Giá: <select name="sortSC" class="filter__input">
						<option value="DESC">Cao đến thấp</option>
						<option value="ASC">Thấp đến cao</option>
					</select> <input type="hidden" name="type" value="sort"> <input
						class="admin-input" type="submit" value="Lọc">
				</div>
			</form>

			<div class="filter__admin">
				<div class="filter__btn">
					<a class="filter__btn-name" href="<c:url value='/add'/>"> Thêm
						sản phẩm</a>
				</div>
			</div>
		</div>
		<div class="admin__content">
			<div class="admin__nav">
				<h1 class="admin__nav-title">Danh mục</h1>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ao-so-mi"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Áo sơ mi">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ao-thun"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Áo thun">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ao-polo"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Áo polo">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="ao-khoac"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Áo Khoác">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="quan-dui"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Quần đùi">
					</form>
				</div>
				<div class="admin__nav-item">
					<form action="<c:url value='/admin'/>" method="post">
						<input type="hidden" name="category" value="quan-dai"> <input
							type="hidden" name="type" value="category"> <input
							class="admin-input" type="submit" value="Quần dài">
					</form>
				</div>
			</div>
			<div class="admin__main">
				<table style="width: 100%">
					<tr>
						<th>Tên sản phẩm</th>
						<th class="price">Giá (Vnd)</th>
						<th class="price">Trạng thái (Số lượng)</th>
						<th class="thao__tacf">Sữa</th>
						<th class="thao__tacd">Xóa</th>
					</tr>
					<c:forEach var="item" items="${ProductModel}">
						<tr>
							<td>${item.shortDescription}</td>
							<td class="price">${item.price}</td>
							<td class="price">${item.status}</td>
							<th class="thao__tacf">
								<form action="<c:url value='/admin'/>" method="post">
									<a class="thao__tacf" href="<c:url value='/edit'/>"><input
										type="hidden" name="edit" value="${item.id}"> <input
										type="hidden" name="type" value="edit"> <input
										type="submit" value="✎ "> </a>
								</form>
							</th>
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