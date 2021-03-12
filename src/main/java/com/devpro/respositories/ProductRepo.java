package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.Product;

public interface ProductRepo extends JpaRepository<Product, Integer>{
	
}
