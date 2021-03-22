package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.Role;

public interface RoleRepo extends JpaRepository<Role, Long>{
	Role findByName(String name);
}
