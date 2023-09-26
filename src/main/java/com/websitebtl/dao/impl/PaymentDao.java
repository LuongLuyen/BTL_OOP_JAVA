package com.websitebtl.dao.impl;

import java.util.List;

import com.websitebtl.dao.IPaymentDao;
import com.websitebtl.mapper.PaymentMapper;
import com.websitebtl.model.PaymentModel;

public class PaymentDao extends AbstractDao implements IPaymentDao {

	@Override
	public List<PaymentModel> findAll() {
		String sql = "SELECT * FROM payment";
		return query(sql, new PaymentMapper());
	}

	@Override
	public List<PaymentModel> findCategory(String category) {
		String sql = "SELECT * FROM payment where transport = ?";
		return query(sql, new PaymentMapper(),category);
	}
}
