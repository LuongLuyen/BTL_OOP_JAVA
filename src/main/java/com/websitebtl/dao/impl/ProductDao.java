package com.websitebtl.dao.impl;

import java.util.List;

import com.websitebtl.dao.IProductDao;
import com.websitebtl.mapper.ProductMapper;
import com.websitebtl.model.ProductModel;

public class ProductDao extends AbstractDao implements IProductDao {

	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM product";
		return query(sql, new ProductMapper());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM product WHERE id = ?";
		update(sql, id);
	}

}
