package com.itptit.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "tbl_size")
public class ProductSize extends BaseEntity {
	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(name = "code", nullable = false)
	private String code;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "size")
	private Set<Product> product_size = new HashSet<Product>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Product> getProduct() {
		return product_size;
	}

	public void setProduct(Set<Product> product_size) {
		this.product_size = product_size;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Set<Product> getProduct_size() {
		return product_size;
	}

	public void setProduct_size(Set<Product> product_size) {
		this.product_size = product_size;
	}
	
}
