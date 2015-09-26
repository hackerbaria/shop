package com.shop.dao;

import java.util.List;

import com.shop.model.Product;

public interface ProductDao  extends GenericDao<Product>{
	
	List<Product> getProductsByTypeID(int type);

}
