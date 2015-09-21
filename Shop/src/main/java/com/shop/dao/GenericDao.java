package com.shop.dao;

import java.util.List;

public interface GenericDao<T> {
	
	T findById(final int id);
	 
	List<T> findAll();
	 
	void create(final T entity);
	 
	void update(final T entity);
	 
	void delete(final T entity);
	 
	void deleteById(final int entityId);

}
