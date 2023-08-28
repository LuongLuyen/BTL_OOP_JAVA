package com.websitebtl.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.websitebtl.dao.IProductDao;
import com.websitebtl.model.ProductModel;
import com.websitebtl.service.IProductService;

public class ProductService implements IProductService {

	@Inject
	private IProductDao productDao;

	@Override
	public List<ProductModel> findAll() {
		return productDao.findAll();
	}

	public void delete(long id) {
		productDao.delete(id);
	}

	@Override
	public List<ProductModel> findCategory(String category) {
		return productDao.findCategory(category);
	}

	@Override
	public List<ProductModel> findById(Long id) {
		return productDao.findById(id);
	}

	@Override
	public ProductModel save(ProductModel productModel) {
		Long productId = productDao.save(productModel);
		return productDao.findOne(productId);
	}

	@Override
	public List<ProductModel> orderById(String sort, Long limit) {
		return productDao.orderById(sort, limit);
	}
}
