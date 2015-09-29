package com.shop.dto;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import com.shop.model.Product;


public class CartDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5884903946331393196L;
	Map<Product,Integer> listProduct;
	int totalPrice;
	
	public CartDTO() {
		listProduct=new HashMap<Product, Integer>();
	}

	public int getTotalPrice() {
		totalPrice=0;
		for(Product p:listProduct.keySet()){			
				totalPrice+=p.getSalePrice()*listProduct.get(p);			
		}
		
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Map<Product, Integer> getListProduct() {
		return listProduct;
	}

	public void setListProduct(Map<Product, Integer> listProduct) {
		this.listProduct = listProduct;
	}

	
	
	
}
