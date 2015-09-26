package com.shop.services;

import java.util.List;

import com.shop.model.Product;


public interface ProductServices {
	List<Product> getProductsByTypeID(int type);

}
