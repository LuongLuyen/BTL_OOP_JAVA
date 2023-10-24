package com.websitebtl.model;

public class ProductModel extends AbstractModel {
	private String status;
	public ProductModel(Long id, Long userId, String shortDescription, String category, String price, String thumbnail,String status) {
		super(id, userId, shortDescription, category, price, thumbnail);
		this.status = status;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
