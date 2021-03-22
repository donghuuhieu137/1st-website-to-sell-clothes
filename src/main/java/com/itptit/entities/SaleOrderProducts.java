package com.itptit.entities;

import javax.persistence.*;

@Entity
@Table(name = "tbl_saleorder_products")
public class SaleOrderProducts extends com.itptit.entities.BaseEntity {
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Product productId;
	
	@Column(name = "quality")
	private Integer quality;
	
	@Column(name = "size")
	private String size;
	
	@Column(name = "color")
	private String color;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private com.itptit.entities.SaleOrder saleOrder;

	public Product getProductId() {
		return productId;
	}

	public void setProductId(Product productId) {
		this.productId = productId;
	}

	public com.itptit.entities.SaleOrder getSaleOrder() {
		return saleOrder;
	}

	public void setSaleOrder(com.itptit.entities.SaleOrder saleOrder) {
		this.saleOrder = saleOrder;
	}

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	
	
}
