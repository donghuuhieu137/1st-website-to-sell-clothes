package com.itptit.entities;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.time.LocalDateTime;

@MappedSuperclass
public class BaseEntity {
	
	@Id // xác định đây là khoá chính.
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto-increment.
	@Column(name = "id")
	private Integer id; // primary-key

//	@Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@Column(name = "created_date", nullable = true)
	private LocalDateTime createdDate;

//	@Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@Column(name = "updated_date", nullable = true)
	private LocalDateTime updatedDate;

	@Column(name = "created_by", nullable = true)
	private Integer createdBy;

	@Column(name = "updated_by", nullable = true)
	private Integer updatedBy;

	@Column(name = "status", nullable = false)
	private Boolean status = Boolean.TRUE;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDateTime getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDateTime createdDate) {
		this.createdDate = createdDate;
	}

	public LocalDateTime getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(LocalDateTime updatedDate) {
		this.updatedDate = updatedDate;
	}

	public Integer getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}

	public Integer getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(Integer updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	
}
