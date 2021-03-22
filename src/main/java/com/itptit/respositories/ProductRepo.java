package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.Product;

public interface ProductRepo extends JpaRepository<Product, Integer>{
	
}
