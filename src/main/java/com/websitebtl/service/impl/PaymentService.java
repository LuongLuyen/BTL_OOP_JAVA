package com.websitebtl.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.websitebtl.dao.IPaymentDao;
import com.websitebtl.model.PaymentModel;
import com.websitebtl.model.ProductModel;
import com.websitebtl.service.IPaymentService;

public class PaymentService implements IPaymentService {
	@Inject
	private IPaymentDao paymentDao;

	@Override
	public List<PaymentModel> findAll() {
		return paymentDao.findAll();
	}

	@Override
	public List<PaymentModel> findCategory(String category) {
		return paymentDao.findCategory(category);
	}
}
