package com.websitebtl.service;

import java.util.List;

import com.websitebtl.model.ProductModel;

public interface IProductService {
	List<ProductModel> findAll();
	void delete(long id);
	List<ProductModel> findCategory(String category);
	List<ProductModel> findById(Long id);
	ProductModel save(ProductModel productModel);
	List<ProductModel> orderById(String sort, Long limit);
}
