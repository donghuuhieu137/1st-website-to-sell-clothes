package com.devpro.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_products")
public class Product extends BaseEntity {
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
	private Set<ProductColor> color = new HashSet<ProductColor>();

	@Lob
	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
	private String detailDes;

	@Column(name = "seo", nullable = false)
	private String seo;

	@ManyToMany(cascade = {CascadeType.PERSIST,CascadeType.REMOVE}, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_products_size",
			  joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "size_id"))
	private Set<ProductSize> size = new HashSet<ProductSize>();

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Category category;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "product_img", fetch = FetchType.EAGER, orphanRemoval = true)
	private List<ProductImages> productImages = new ArrayList<ProductImages>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
	private List<SaleOrderProducts> saleOrderProducts = new ArrayList<SaleOrderProducts>();

	public void addProductImages(ProductImages _productImages) {
		_productImages.setProduct(this);
		productImages.add(_productImages);
	}

	public void removeProductImages(ProductImages _productImages) {
		_productImages.setProduct(null);
		productImages.remove(_productImages);
	}

	public void removeProductImages() {
		for(ProductImages productImages : productImages) {
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<ProductSize> getSize() {
		return size;
	}

	public void setSize(Set<ProductSize> size) {
		this.size = size;
	}

	public List<ProductImages> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<ProductImages> productImages) {
		this.productImages = productImages;
	}

	public Set<ProductColor> getColor() {
		return color;
	}

	public void setColor(Set<ProductColor> color) {
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
