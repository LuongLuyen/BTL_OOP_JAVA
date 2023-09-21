package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentDao extends GenericDao {
	List<PaymentModel> findAll();

}
