package com.websitebtl.dao.impl;

import java.util.List;

import com.websitebtl.dao.IUserDao;
import com.websitebtl.mapper.UserMapper;
import com.websitebtl.model.UserModel;

public class UserDao extends AbstractDao implements IUserDao {

	@Override
	public UserModel findUser(String userName, String password) {
		String sql = "SELECT * FROM users WHERE userName = ? AND password = ?";
		List<UserModel> user = query(sql, new UserMapper(), userName,password);
		return user.isEmpty() ? null : user.get(0);
	}
}
