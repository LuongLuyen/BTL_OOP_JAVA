package com.websitebtl.service.impl;

import javax.inject.Inject;

import com.websitebtl.dao.IUserDao;
import com.websitebtl.model.UserModel;
import com.websitebtl.service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDao userDao;

	@Override
	public UserModel findUserNameAndPassword(String userName, String password) {
		return userDao.findUser(userName, password);
	}

}
