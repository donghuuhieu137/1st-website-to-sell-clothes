package com.itptit.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "tbl_products_images")
public class ProductImages extends BaseEntity{
	
	@Column(name = "title", length = 500, nullable = false)
	private String title;
	
	@Column(name = "path", length = 200, nullable = false)
	private String path;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_img_id")
	private Product product_img;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Product getProduct() {
		return product_img;
	}

	public void setProduct(Product product_img) {
		this.product_img = product_img;
	}
	
	
}
