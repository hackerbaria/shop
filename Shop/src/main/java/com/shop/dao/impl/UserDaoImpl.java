package com.shop.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.shop.dao.UserDao;
import com.shop.model.User;


@Repository
public class UserDaoImpl extends GenericDaoImpl<User> implements UserDao {

	public boolean checkUser(User user) {
		String hql = "FROM User c WHERE c.userName = :user AND c.password = :pass";
		Query query = entityManager.createQuery(hql);
		query.setParameter("user", user.getUserName());
		query.setParameter("pass", user.getPassword());
		List results = query.getResultList();
		
		if (!results.isEmpty()) {
			return true;
		} else {
			return false;
		}
	}

}
