package com.websitebtl.model;

public class UserModel {
	private Long id;
	private String userName;
	private String password;
	private String fullName;
	public UserModel() {}
	public UserModel(Long id, String userName, String password, String fullName) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.fullName = fullName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
}
