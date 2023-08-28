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
		return query(sql, new ProductMapper(), category);
	}

	@Override
	public List<ProductModel> findById(Long id) {
		String sql = "SELECT * FROM product where id = ?";
		return query(sql, new ProductMapper(), id);
	}

	@Override
	public Long save(ProductModel productModel) {
		String sql = "INSERT INTO product (userId,shortDescription,status,category,price) VALUES (?,?,?,?,?)";
		return insert(sql, productModel.getUserId(), productModel.getShortDescription(), productModel.getStatus(),
				productModel.getCategory(), productModel.getPrice());
	}

	@Override
	public ProductModel findOne(Long id) {
		String sql = "SELECT * FROM product WHERE id = ?";
		List<ProductModel> product = query(sql, new ProductMapper(), id);
		return product.isEmpty() ? null : product.get(0);
	}

	@Override
	public List<ProductModel> orderById(String sort, Long limit) {
		StringBuilder sql = new StringBuilder("SELECT * FROM product");
		if (sort.equals("DESC")) {
			if(limit != null) {
				sql.append(" ORDER BY id "+sort+" LIMIT "+limit+ "");
			}else {
				sql.append(" ORDER BY price " +sort+ "");
			}
		}
		if (sort.equals("ASC")) {
			sql.append(" ORDER BY price " +sort+ "");
		}
		return query(sql.toString(), new ProductMapper());
	}
}
