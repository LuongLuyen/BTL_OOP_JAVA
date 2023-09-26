package com.websitebtl.service;

import java.util.List;

import com.websitebtl.model.PaymentModel;
import com.websitebtl.model.ProductModel;

public interface IPaymentService {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategory(String category);
}
