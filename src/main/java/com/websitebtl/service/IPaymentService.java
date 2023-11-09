package com.websitebtl.service;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentService {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategoryByUser(String category, Long id);
	List<PaymentModel> findByIdUser(Long id);
	PaymentModel save(PaymentModel paymentModel);
	void delete(long id);
	PaymentModel findOne(Long id);
	PaymentModel update(PaymentModel paymentModel);
}
