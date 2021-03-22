package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.ProductSize;

public interface SizeRepo extends JpaRepository<ProductSize, Integer>{

}
