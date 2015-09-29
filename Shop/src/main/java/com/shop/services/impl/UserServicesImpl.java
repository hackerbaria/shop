package com.shop.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.model.User;
import com.shop.services.UserServices;

@Service
public class UserServicesImpl implements UserServices {

	
	@Autowired
	UserDao userDao;
	public boolean checkUser(User user) {		
		return userDao.checkUser(user);
	}
	public User findByUsername(String user) {
		return userDao.findByUsername(user);
	}
	

}
