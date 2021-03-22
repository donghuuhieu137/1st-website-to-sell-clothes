package com.itptit.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity {
	@Column(name = "code")
	private String code;

	@Column(name = "total", nullable = false)
	private Integer total;

	@Column(name = "customer_name")
	private String name;

	@Column(name = "customer_address")
	private String address;
	
	@Column(name = "customer_phone")
	private String phoneNumber;

	@Column(name = "customer_email")
	private String email;
	
	@Column(name = "seo")
	private String seo;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "saleOrder", fetch = FetchType.EAGER)
	private List<SaleOrderProducts> saleOrderProducts = new ArrayList<SaleOrderProducts>();
	
//	public void addSaleOrderProducts(SaleOrderProducts _saleOrderProducts) {
//		_saleOrderProducts.setSaleOrder(this);
//		saleOrderProducts.add(_saleOrderProducts);
//	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public List<SaleOrderProducts> getSaleOrderProducts() {
		return saleOrderProducts;
	}

	public void setSaleOrderProducts(List<SaleOrderProducts> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private User user;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
