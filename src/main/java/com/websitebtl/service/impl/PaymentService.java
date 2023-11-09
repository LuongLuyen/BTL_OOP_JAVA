package com.websitebtl.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.websitebtl.dao.IPaymentDao;
import com.websitebtl.model.PaymentModel;
import com.websitebtl.service.IPaymentService;

public class PaymentService implements IPaymentService {
	@Inject
	private IPaymentDao paymentDao;

	@Override
	public List<PaymentModel> findAll() {
		return paymentDao.findAll();
	}

	@Override
	public List<PaymentModel> findCategoryByUser(String category, Long id) {
		return paymentDao.findCategoryByUser(category,id);
	}

	@Override
	public List<PaymentModel> findByIdUser(Long id) {
		return paymentDao.findByIdUser(id);
	}

	@Override
	public PaymentModel save(PaymentModel paymentModel) {
		Long id = paymentDao.save(paymentModel);
		return paymentDao.findOne(id);
	}

	@Override
	public void delete(long id) {
		paymentDao.delete(id);
	}

	@Override
	public PaymentModel findOne(Long id) {
		return paymentDao.findOne(id);
	}

	@Override
	public PaymentModel update(PaymentModel paymentModel) {
		paymentDao.update(paymentModel);
		return paymentDao.findOne(paymentModel.getId());
	}
}
