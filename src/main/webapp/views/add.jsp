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
			<form action="<c:url value='/edit'/>" method="post">
					<table class="edit__table">
						<tr>
							<th class="edit__name">Tên sản phẩm</th>
							<td><input class="edit__input" type="text" id="fname"
								name="fname" value="text"></td>
						</tr>
						<tr>
							<th class="edit__name">Thể loại</th>
							<td><select class="edit__input">
									<option></option>
									<option>Quần áo nam</option>
									<option>Tivi</option>
									<option>Điện thoại</option>
									<option>Laptop</option>
									<option>Tai nghe</option>
							</select></td>
						</tr>
						<tr>
							<th class="edit__name">Giá</th>
							<td><input class="edit__input" type="text" id="fname"
								name="fname" value="text"></td>
						</tr>
						<tr>
							<th class="edit__name">Trạng thái</th>
							<td><input class="edit__input" type="text" id="fname"
								name="fname" value="text"></td>
						</tr>
					</table>
				<div class="edit__submit">
					<input class="edit__submit" type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>