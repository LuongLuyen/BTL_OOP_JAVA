package com.websitebtl.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.websitebtl.model.PaymentModel;

public class PaymentMapper implements RowMapper<PaymentModel> {

	@Override
	public PaymentModel mapRow(ResultSet resultSet) {
		try {
			PaymentModel payment = new PaymentModel(null, null, null, null, null, null, null);
			payment.setId(resultSet.getLong("id"));
			payment.setUserId(resultSet.getLong("userid"));
			payment.setShortDescription(resultSet.getString("shortdescription"));
			payment.setTransport(resultSet.getString("transport"));
			payment.setCategory(resultSet.getString("category"));
			payment.setPrice(resultSet.getString("price"));
			payment.setThumbnail(resultSet.getString("thumbnail"));
			return payment;
		} catch (SQLException e) {
			return null;
		}
	}

}
