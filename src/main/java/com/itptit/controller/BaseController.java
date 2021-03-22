package com.itptit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.itptit.entities.Category;
import com.itptit.respositories.CategoryRepo;

public class BaseController {
	@Autowired
	CategoryRepo categoryRepo;

	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryRepo.findAll();
	}
}
