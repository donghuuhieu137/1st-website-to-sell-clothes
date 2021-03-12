package com.devpro.entities;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder")
public class Order extends BaseEntity{
	
	@Column(name = "code", length = 45, nullable = false)
	private String code;
	
	@Column(name = "customer_name", length = 500, nullable = false)
	private String customer_name;
	
	@Column(name = "customer_address", length = 500, nullable = false)
	private String customer_address;
	
	@Column(name = "total",	precision = 13, scale = 2, nullable = false)
	private BigDecimal total;
	
	@Column(name = "user_id", length = 200, nullable = false)
	private Integer user_id;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	
	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
	
}
