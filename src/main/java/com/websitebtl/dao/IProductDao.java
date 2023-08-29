package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.ProductModel;

public interface IProductDao extends GenericDao{
	List<ProductModel> findAll();
	void delete(long id);
	List<ProductModel> findCategory(String category);
	List<ProductModel> findById(Long id);
	Long save(ProductModel productModel);
	ProductModel findOne(Long id);
	List<ProductModel> orderById(String sort, Long limit);
	void update(ProductModel productModel);
}
