package com.itptit.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itptit.entities.Category;

public interface CategoryRepo extends JpaRepository<Category, Integer>{

}
