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

	@Override
	public List<ProductModel> findCategory(String category) {
		String sql = "SELECT * FROM product where category = ?";
		return query(sql, new ProductMapper(),category);
	}

	@Override
	public List<ProductModel> findById(Long id) {
		String sql = "SELECT * FROM product where id = ?";
		return query(sql, new ProductMapper(),id);
	}

}
