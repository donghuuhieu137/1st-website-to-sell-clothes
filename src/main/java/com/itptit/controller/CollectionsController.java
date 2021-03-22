package com.itptit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itptit.entities.Category;
import com.itptit.entities.Product;
import com.itptit.model.CategorySearch;
import com.itptit.model.ProductSearch;
import com.itptit.services.CategoryService;
import com.itptit.services.ProductsService;
import org.springframework.web.bind.annotation.RestController;

@Controller// -> tạo ra 1 bean tên webConf và được spring-container quản lí.
// -> báo module web mapping request cho controller này.

public class CollectionsController extends BaseController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping(value = { "/collections/{categoryId}" }, method = RequestMethod.GET)
	public String collection(@PathVariable("categoryId") Integer categoryId,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
		throws Exception {
		Category category = categoryRepo.getOne(categoryId);
		model.addAttribute("category", category);
		if(category.getParent_id()==null) {
			CategorySearch categorySearch = new CategorySearch();
			categorySearch.setParentId(categoryId);
			List<Category> categories = categoryService.search(categorySearch);
			List<Product> products = new ArrayList<Product>();
			for (Category i : categories) {
				System.out.println(i.getId()+" ");
				ProductSearch productSearch = new ProductSearch();
				productSearch.setCategoryId(i.getId());
				products.addAll(productsService.search(productSearch));
			}
			model.addAttribute("products", products);
		}
		else {
			ProductSearch productSearch = new ProductSearch();
			productSearch.setCategoryId(categoryId);
			List<Product> products = productsService.search(productSearch);
			model.addAttribute("products", products);
		}
		
		return "front-end/collections";
	}
}
