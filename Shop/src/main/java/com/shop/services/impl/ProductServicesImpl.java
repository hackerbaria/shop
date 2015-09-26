package com.shop.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.ProductDao;
import com.shop.model.Product;
import com.shop.services.ProductServices;

@Service
public class ProductServicesImpl implements ProductServices {
	
	@Autowired
	private ProductDao productDao;

	public List<Product> getProductsByTypeID(int type) {
		return productDao.getProductsByTypeID(type);
	}

}
