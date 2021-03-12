package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.SaleOrder;

public interface SaleOrderRepo extends JpaRepository<SaleOrder, Integer> {

}
