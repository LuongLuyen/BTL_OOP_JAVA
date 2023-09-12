<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/style/styleEdit.css' />" rel="stylesheet"
	type="text/css" media="all" />
<title>Edit</title>
</head>
<body>
	<div class="edit__app">
		<div>
			<div class="edit__title">Edit Product</div>
			<form action="<c:url value='/add'/>" method="post">

				<c:forEach var="item" items="${ProductModel}">
					<table class="edit__table">
						<tr>
							<th class="edit__name">Tên sản phẩm</th>
							<td><input class="edit__input" type="text"
								id="shortDescription" name="shortDescription"
								value="${item.shortDescription}"></td>
						</tr>
						<tr>
							<th class="edit__name">Thể loại</th>
							<td><select name="category" class="edit__input">
									<option value="${item.category}">${item.category}</option>
									<option value="ao-so-mi">Áo sơ mi</option>
									<option value="ao-thun">Áo thun</option>
									<option value="ao-polo">Áo polo</option>
									<option value="ao-khoac">Áo khoác</option>
									<option value="quan-dui">Quần đùi</option>
									<option value="quan-dai">Quần dài</option>
							</select></td>
						</tr>
						<tr>
							<th class="edit__name">Giá</th>
							<td><input class="edit__input" type="text" id="price"
								name="price" value="${item.price}"></td>
						</tr>
						<tr>
							<th class="edit__name">Số Lượng</th>
							<td><input class="edit__input" type="text" id="status"
								name="status" value="${item.status}"></td>
						</tr>
						<tr>
							<th class="edit__name">Thumbnail</th>
							<td><input class="edit__input" type="text" id="thumbnail"
								name="thumbnail" value="${item.thumbnail}"></td>
						</tr>
					</table>
					<input type="hidden" id="id" name="id" value="${item.id}">
				</c:forEach>
				<div class="edit__submit">
					<input class="edit__submit" type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>