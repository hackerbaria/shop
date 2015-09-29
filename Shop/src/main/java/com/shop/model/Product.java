package com.shop.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "products", catalog = "shop")
public class Product implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private int id;
	
	@NotEmpty
	@Column(name = "ProductName", unique = true, nullable = false, length = 256)
	private String productName;
	
	@Column(name = "input_amount")
	private int inputAmount;
	
	@Column(name = "exist_amount")
	private int existAmount;
	
	@Column(name = "date_created")
	private Date date_created;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "productTypeID", nullable = false)	
	private ProductType productType;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "areaID", nullable = false)
	private Area area;
	
	@Column(name = "IMAGE")
	private String image;
	
	@Column(name = "sale_prices")
	private float salePrice;
	
	public Product() {		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getInputAmount() {
		return inputAmount;
	}

	public void setInputAmount(int inputAmount) {
		this.inputAmount = inputAmount;
	}

	public int getExistAmount() {
		return existAmount;
	}

	public void setExistAmount(int existAmount) {
		this.existAmount = existAmount;
	}

	public Date getDate_created() {
		return date_created;
	}

	public void setDate_created(Date date_created) {
		this.date_created = date_created;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public float getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	
	

}
