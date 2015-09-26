package com.shop.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.shop.dao.ProductDao;
import com.shop.model.Product;


@Repository
public class ProductDaoImpl extends GenericDaoImpl<Product> implements ProductDao {

	public List<Product> getProductsByTypeID(int type) {
		String sql="from Product p where p.productType.type = :type";
		Query query= entityManager.createQuery(sql);
		query.setParameter("type", type);
		List<Product> list=query.getResultList();
		return list;
	}

}
