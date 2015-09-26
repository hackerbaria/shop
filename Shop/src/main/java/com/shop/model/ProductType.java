package com.shop.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "ProductTypes", catalog = "shop")
public class ProductType {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private int type;
	
	@NotEmpty
	@Column(name = "NAME", unique = true, nullable = false, length = 256)
	private String name;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productType")
	private Set<Product> productRecords = new HashSet<Product>(
			0);
	

	public int getType() {
		return type;
	}

	public Set<Product> getProductRecords() {
		return productRecords;
	}

	public void setProductRecords(Set<Product> productRecords) {
		this.productRecords = productRecords;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	public ProductType() {		
	}
	

}
