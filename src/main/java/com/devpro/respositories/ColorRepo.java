package com.devpro.respositories;



import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.ProductColor;

public interface ColorRepo extends JpaRepository<ProductColor, Integer>{

}
