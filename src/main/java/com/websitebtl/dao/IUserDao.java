package com.websitebtl.dao;

import com.websitebtl.model.UserModel;

public interface IUserDao extends GenericDao {
    UserModel findUser(String userName, String password);
}
