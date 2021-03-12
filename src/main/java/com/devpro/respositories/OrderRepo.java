package com.devpro.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devpro.entities.Order;

public interface OrderRepo extends JpaRepository<Order, Integer>{

}
