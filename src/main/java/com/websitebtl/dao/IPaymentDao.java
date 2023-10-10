package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentDao extends GenericDao {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategory(String category);
	List<PaymentModel> findByIdUser(Long id);
	Long save(PaymentModel paymentModel);
	PaymentModel findOne(Long id);
}
