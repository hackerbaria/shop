package com.shop.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.ProductTypeDao;
import com.shop.model.ProductType;
import com.shop.services.ProductTypeServices;

@Service
public class ProductTypeServicesImpl implements ProductTypeServices {
	
	@Autowired
	private ProductTypeDao productDao;

	public List<ProductType> getAllProductTypes() {
		return  productDao.findAll();		
	}

}
