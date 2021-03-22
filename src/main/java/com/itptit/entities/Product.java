package com.itptit.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "tbl_products")
public class Product extends com.itptit.entities.BaseEntity {
	@Column(name = "title", length = 500, nullable = false)
	private String title;

	@Column(name = "code", nullable = false)
	private String code;

	@Column(name = "price", nullable = false)
	private Integer price;

	@Column(name = "short_description", length = 3000, nullable = false)
	private String shortDes;

	@ManyToMany(cascade = {CascadeType.PERSIST,CascadeType.REMOVE}, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_products_color",
	  joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "color_id"))
	private Set<com.itptit.entities.ProductColor> color = new HashSet<com.itptit.entities.ProductColor>();

	@Lob
	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
	private String detailDes;

	@Column(name = "seo", nullable = false)
	private String seo;

	@ManyToMany(cascade = {CascadeType.PERSIST,CascadeType.REMOVE}, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_products_size",
			  joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "size_id"))
	private Set<com.itptit.entities.ProductSize> size = new HashSet<com.itptit.entities.ProductSize>();

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private com.itptit.entities.Category category;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "product_img", fetch = FetchType.EAGER, orphanRemoval = true)
	private List<com.itptit.entities.ProductImages> productImages = new ArrayList<com.itptit.entities.ProductImages>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
	private List<com.itptit.entities.SaleOrderProducts> saleOrderProducts = new ArrayList<com.itptit.entities.SaleOrderProducts>();

	public void addProductImages(com.itptit.entities.ProductImages _productImages) {
		_productImages.setProduct(this);
		productImages.add(_productImages);
	}

	public void removeProductImages(com.itptit.entities.ProductImages _productImages) {
		_productImages.setProduct(null);
		productImages.remove(_productImages);
	}

	public void removeProductImages() {
		for(com.itptit.entities.ProductImages productImages : productImages) {
			removeProductImages(productImages);
		}
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getShortDes() {
		return shortDes;
	}

	public void setShortDes(String shortDes) {
		this.shortDes = shortDes;
	}



	public String getDetailDes() {
		return detailDes;
	}

	public void setDetailDes(String detailDes) {
		this.detailDes = detailDes;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public com.itptit.entities.Category getCategory() {
		return category;
	}

	public void setCategory(com.itptit.entities.Category category) {
		this.category = category;
	}

	public Set<com.itptit.entities.ProductSize> getSize() {
		return size;
	}

	public void setSize(Set<com.itptit.entities.ProductSize> size) {
		this.size = size;
	}

	public List<com.itptit.entities.ProductImages> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<com.itptit.entities.ProductImages> productImages) {
		this.productImages = productImages;
	}

	public Set<com.itptit.entities.ProductColor> getColor() {
		return color;
	}

	public void setColor(Set<com.itptit.entities.ProductColor> color) {
		this.color = color;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

//	public List<SaleOrderProducts> getSaleOrderProducts() {
//		return saleOrderProducts;
//	}
//
//	public void setSaleOrderProducts(List<SaleOrderProducts> saleOrderProducts) {
//		this.saleOrderProducts = saleOrderProducts;
//	}




}
