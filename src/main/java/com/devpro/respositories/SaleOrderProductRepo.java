package com.devpro.respositories;
import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.SaleOrderProducts;

public interface SaleOrderProductRepo extends JpaRepository<SaleOrderProducts, Integer>{

}
