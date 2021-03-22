package com.itptit.respositories;



import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.ProductColor;

public interface ColorRepo extends JpaRepository<ProductColor, Integer>{

}
