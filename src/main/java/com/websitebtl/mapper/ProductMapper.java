package com.websitebtl.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.websitebtl.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet resultSet) {
		try {
			ProductModel product = new ProductModel(null, null, null, null, null, null, null);
			product.setId(resultSet.getLong("id"));
			product.setUserId(resultSet.getLong("userid"));
			product.setShortDescription(resultSet.getString("shortdescription"));
			product.setStatus(resultSet.getString("status"));
			product.setCategory(resultSet.getString("category"));
			product.setPrice(resultSet.getString("price"));
			product.setThumbnail(resultSet.getString("thumbnail"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
