package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.PaymentModel;
import com.websitebtl.model.ProductModel;

public interface IPaymentDao extends GenericDao {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategory(String category);

}
