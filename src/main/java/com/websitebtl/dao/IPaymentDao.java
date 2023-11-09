package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentDao extends GenericDao {
	List<PaymentModel> findAll();
	List<PaymentModel> findCategoryByUser(String category, Long id);
	List<PaymentModel> findByIdUser(Long id);
	Long save(PaymentModel paymentModel);
	PaymentModel findOne(Long id);
	void delete(long id);
	void update(PaymentModel paymentModel);
}
