package com.itptit.respositories;
import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.SaleOrderProducts;

public interface SaleOrderProductRepo extends JpaRepository<SaleOrderProducts, Integer>{

}
