package com.shop.dao;

import com.shop.model.User;

public interface UserDao extends GenericDao<User> {

	boolean checkUser(User user);
}
