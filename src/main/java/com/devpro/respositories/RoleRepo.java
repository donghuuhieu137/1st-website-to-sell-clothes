package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.Role;

public interface RoleRepo extends JpaRepository<Role, Long>{
	Role findByName(String name);
}
