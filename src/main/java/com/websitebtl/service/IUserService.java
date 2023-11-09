package com.websitebtl.service;

import com.websitebtl.model.UserModel;

public interface IUserService {
	UserModel findUserNameAndPassword(String userName, String password);
}
