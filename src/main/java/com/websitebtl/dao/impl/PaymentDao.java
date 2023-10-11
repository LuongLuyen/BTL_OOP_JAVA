package com.websitebtl.dao.impl;

import java.util.List;

import com.websitebtl.dao.IPaymentDao;
import com.websitebtl.mapper.PaymentMapper;
import com.websitebtl.model.PaymentModel;

public class PaymentDao extends AbstractDao implements IPaymentDao {

	@Override
	public List<PaymentModel> findAll() {
		String sql = "SELECT * FROM payment ORDER BY id DESC;";
		return query(sql, new PaymentMapper());
	}

	@Override
	public List<PaymentModel> findCategory(String category) {
		String sql = "SELECT * FROM payment where transport = ?";
		return query(sql, new PaymentMapper(),category);
	}

	@Override
	public List<PaymentModel> findByIdUser(Long id) {
		String sql = "SELECT * FROM payment where userId = ?";
		return query(sql, new PaymentMapper(),id);
	}

	@Override
	public Long save(PaymentModel paymentModel) {
		String sql = "INSERT INTO payment (userId,shortDescription,transport,category,price,thumbnail) VALUES (?,?,?,?,?,?)";
		return insert(sql, paymentModel.getUserId(), paymentModel.getShortDescription(), paymentModel.getTransport(),
				paymentModel.getCategory(), paymentModel.getPrice(), paymentModel.getThumbnail());
	}

	@Override
	public PaymentModel findOne(Long id) {
		String sql = "SELECT * FROM payment WHERE id = ?";
		List<PaymentModel> payment = query(sql, new PaymentMapper(), id);
		return payment.isEmpty() ? null : payment.get(0);
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM payment WHERE id = ?";
		update(sql, id);
	}
}
