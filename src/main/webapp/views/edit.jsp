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
			<table class = "edit__table">
				<tr>
					<th class="edit__name">Tên sản phẩm</th>
					<td><input class="edit__input" type="text" id="fname"
						name="fname" value="Test"></td>
				</tr>
				<tr>
					<th class="edit__name">Thể loại</th>
					<td><input class="edit__input" type="text" id="fname"
						name="fname" value="Test"></td>
				</tr>
				<tr>
					<th class="edit__name">Giá</th>
					<td><input class="edit__input" type="text" id="fname"
						name="fname" value="Test"></td>
				</tr>
				<tr>
					<th class="edit__name">Trạng thái</th>
					<td><input class="edit__input" type="text" id="fname"
						name="fname" value="Test"></td>
				</tr>
			</table>
			<div class="edit__submit">Submit</div>
		</div>
	</div>
</body>
</html>