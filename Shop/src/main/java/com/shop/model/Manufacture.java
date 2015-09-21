package com.shop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "MANUFACTURES", catalog = "shop")
public class Manufacture {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private int id;
	
	@NotEmpty
	@Column(name = "MANUFACTURENAME", unique = true, nullable = false, length = 256)
	private String manufactureName;
	
	@Column(name = "ADDRESS", unique = true, nullable = false, length = 256)
	private String address;
	
	@Column(name = "PHONE", unique = true, nullable = false, length = 13)
	private String phone;
	
	@Column(name = "DUE_AMOUNT", unique = true, nullable = false)
	private float dueAmount;
	
	@Column(name = "PAID_AMOUNT", unique = true, nullable = false)
	private float paidAmount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getManufactureName() {
		return manufactureName;
	}

	public void setManufactureName(String manufactureName) {
		this.manufactureName = manufactureName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public float getDueAmount() {
		return dueAmount;
	}

	public void setDueAmount(float dueAmount) {
		this.dueAmount = dueAmount;
	}

	public float getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(float paidAmount) {
		this.paidAmount = paidAmount;
	}
	
	public Manufacture() {
		
	}
		

}
