package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.ProductModel;

public interface IProductDao extends GenericDao{
	List<ProductModel> findAll();
}
