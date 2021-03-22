package com.itptit.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "tbl_color")
public class ProductColor extends com.itptit.entities.BaseEntity {
	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(name = "code", nullable = false)
	private String code;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "color")
	private Set<Product> product_color = new HashSet<Product>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Product> getProduct_color() {
		return product_color;
	}

	public void setProduct_color(Set<Product> product_color) {
		this.product_color = product_color;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	

	
	
}
