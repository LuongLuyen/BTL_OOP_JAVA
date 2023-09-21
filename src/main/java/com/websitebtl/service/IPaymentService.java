package com.websitebtl.service;

import java.util.List;

import com.websitebtl.model.PaymentModel;

public interface IPaymentService {
	List<PaymentModel> findAll();
}
