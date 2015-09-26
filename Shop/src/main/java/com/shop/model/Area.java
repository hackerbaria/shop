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
@Table(name = "AREAS", catalog = "shop")
public class Area {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private int id;
	
	@NotEmpty
	@Column(name = "AREANAME", unique = true, nullable = false, length = 255)
	private String areaName;
	
	
	@Column(name = "DESCRIPTIONS", unique = true, length = 255)
	private String description;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "area")
	private Set<Product> products = new HashSet<Product>(
			0);

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public Area() {		
	}

}
