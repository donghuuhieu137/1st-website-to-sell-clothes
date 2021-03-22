package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.SaleOrder;

public interface SaleOrderRepo extends JpaRepository<SaleOrder, Integer> {

}
