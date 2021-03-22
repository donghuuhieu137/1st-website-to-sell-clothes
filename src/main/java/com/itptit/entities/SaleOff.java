package com.itptit.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOff extends com.itptit.entities.BaseEntity {
	@Column(name = "code", length = 45, nullable = false)
	private String code;
	
	@Column(name = "user_id", nullable = true)
	private Integer user_id;
	
	@Column(name = "total", precision = 13,scale = 2 , nullable = false)
	private BigDecimal total;
	
	@Column(name = "customer_name", length = 500, nullable = true)
	private String customer_name;
	
	@Column(name = "customer_address", length = 500, nullable = true)
	private String customer_address;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
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

	
}
