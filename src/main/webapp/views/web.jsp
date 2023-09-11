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
				<span>Nguyen Van Tuan </span> <span>|</span> <span>Giỏ hàng</span>
			</div>
		</div>
		<div class="web__main">
			<div class="web__nav">
				<h1 class="web__category-title">Danh mục</h1>
				<div class="web__category">Áo thun</div>
				<div class="web__category">Áo sơ mi</div>
				<div class="web__category">Áo polo</div>
				<div class="web__category">Áo khoác</div>
				<div class="web__category">Hoodie | áo nỉ</div>
				<div class="web__category">Quần đùi</div>
				<div class="web__category">Quần dài</div>
			</div>
			<div class="web__content">
				<div class="web__swiper">
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/3a297e6a32c73627fcff731b05d1e295">
					</div>
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/bd38dd61f420db267d0bbdab6def1a7b">
					</div>
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lhxnwmjfcog141">
					</div>
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li30mnvmmzv090">
					</div>
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/vn-11134211-7qukw-lh1xtjqv4smrcc">
					</div>
					<div class="web__swiper-item">
						<img class="web__swiper-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/f5782e63e582dbdbd658c62224c29729">
					</div>
				</div>
				<div class="vach">""</div>
				<div class="web__filter">
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
							<div class="filter__btn">
								<input type="hidden" name="newProduct" value="4"> <input
									type="hidden" name="sortSC" value="DESC"> <input
									type="hidden" name="type" value="sort"> <input
									class="admin-input" type="submit" value="Phổ biến">
							</div>
						</div>
					</form>
					<form action="<c:url value='/admin'/>" method="post">
						<div class="filter__admin">
							<div class="filter__btn">
								<input type="hidden" name="newProduct" value="4"> <input
									type="hidden" name="sortSC" value="DESC"> <input
									type="hidden" name="type" value="sort"> <input
									class="admin-input" type="submit" value="Bán chạy">
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
				</div>
				<div class="web__product">

					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>
					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>
					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>
					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>
					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>
					<div class="web__product-item">
						<img class="web__product-img" alt="swiper"
							src="https://down-vn.img.susercontent.com/file/eec7269e9df4849518f425c9e90a089a">
						<span class="web__product-name">Bộ Quần Áo Nam Thể Thao Mùa
							Hè Phối Layer Thời Trang Vải Tổ Ong Thoáng Mát</span>
						<div class="web__product-price">
							<span> đ 199.000 </span> <span>Đã bán: 199 </span>
						</div>
						<div class="web__product-btn">
							<div class="web__product-buy">Mua ngay</div>
							<div class="web__product-cart">Giỏ hàng</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>