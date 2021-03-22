package com.itptit.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tbl_roles")
public class Role extends com.itptit.entities.BaseEntity {
	
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	
	@Column(name = "description", length = 45, nullable = false)
	private String description;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "roles")
	private List<User> users = new ArrayList<User>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	
}
