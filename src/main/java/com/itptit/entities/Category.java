package com.itptit.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tbl_category")
public class Category extends com.itptit.entities.BaseEntity {
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	
	@Column(name = "description", length = 45, nullable = false)
	private String description;
	
	@Column(name = "seo",nullable = false)
	private String seo;

	@Column(name = "parent_id", nullable = true)
	private Integer parent_id;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "category", fetch = FetchType.EAGER)
	private List<Product> products = new ArrayList<Product>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Integer getParent_id() {
		return parent_id;
	}

	public void setParent_id(Integer parent_id) {
		this.parent_id = parent_id;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
	
	
}
