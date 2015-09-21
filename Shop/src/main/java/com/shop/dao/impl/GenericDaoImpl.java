package com.shop.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import com.shop.dao.GenericDao;

@Transactional
public class GenericDaoImpl<T> implements GenericDao<T> {
	
	private Class< T > clazz;
	 
	@PersistenceContext
	EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	public GenericDaoImpl() {
		this.clazz = (Class<T>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	public void setClazz( Class< T > clazzToSet ){
	      this.clazz = clazzToSet;
	}
	
	public T findById(int id) {
		return entityManager.find(clazz, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return entityManager.createQuery( "from " + clazz.getName() )
			       .getResultList();
	}

	public void create(T entity) {
		entityManager.persist( entity );
	}

	
	public void update(T entity) {
		entityManager.merge( entity );
	}

	public void delete(T entity) {
		entityManager.remove( entity );
	}

	public void deleteById(int entityId) {
		T entity = findById( entityId );
	    delete( entity );
	}


}
