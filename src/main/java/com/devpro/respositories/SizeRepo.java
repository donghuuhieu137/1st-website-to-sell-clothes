package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.ProductSize;

public interface SizeRepo extends JpaRepository<ProductSize, Integer>{

}
