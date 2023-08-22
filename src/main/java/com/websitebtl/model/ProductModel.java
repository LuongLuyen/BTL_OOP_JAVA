package com.websitebtl.model;

public class ProductModel {
	private Long userId;
	private String thumbnai;
	private String shortDescription;
	private String status;
	private String category;
	private String price;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getThumbnai() {
		return thumbnai;
	}
	public void setThumbnai(String thumbnai) {
		this.thumbnai = thumbnai;
	}
	public String getShortDescription() {
		return shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

}
