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

}
