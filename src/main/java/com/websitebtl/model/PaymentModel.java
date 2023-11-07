package com.websitebtl.model;

public class PaymentModel extends AbstractModel {
	private String transport;
	public PaymentModel() {}
	public PaymentModel(Long id, Long userId, String shortDescription, String category, String price, String thumbnail,String transport) {
		super(id, userId, shortDescription, category, price, thumbnail);
		this.transport = transport;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}

}
