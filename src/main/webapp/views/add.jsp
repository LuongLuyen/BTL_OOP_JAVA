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
			<form action="<c:url value='/admin'/>" method="post" accept-charset="UTF-8">
					<table class="edit__table">
						<tr>
							<th class="edit__name">Tên sản phẩm</th>
							<td><input class="edit__input" type="text" id="shortDescription"
								name="shortDescription"></td>
						</tr>
						<tr>
							<th class="edit__name">Thể loại</th>
							<td><select name="category" class="edit__input">
									<option value=""></option>
									<option value="ao-nam">Quần áo nam</option>
									<option value="ti-ci">Tivi</option>
									<option value="dien-thoai">Điện thoại</option>
									<option value="lap-top">Laptop</option>
									<option value="tai-nghe">Tai nghe</option>
							</select></td>
						</tr>
						<tr>
							<th class="edit__name">Giá</th>
							<td><input class="edit__input" type="text" id="price"
								name="price" ></td>
						</tr>
						<tr>
							<th class="edit__name">Trạng thái</th>
							<td><input class="edit__input" type="text" id="status"
								name="status"></td>
						</tr>
					</table>
				<div class="edit__submit">
				    <input type="hidden" name="type" value="add">
					<input class="edit__submit" type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>