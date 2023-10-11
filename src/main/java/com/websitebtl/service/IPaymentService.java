package com.websitebtl.service;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentService {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategory(String category);
	List<PaymentModel> findByIdUser(Long id);
	PaymentModel save(PaymentModel paymentModel);
	void delete(long id);
}
