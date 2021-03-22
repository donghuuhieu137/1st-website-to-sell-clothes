package com.itptit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itptit.entities.Product;
import com.itptit.model.ProductSearch;
import com.itptit.services.ProductsService;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private ProductsService productsService;
	
	@RequestMapping(value = { "/product/{id}" }, method = RequestMethod.GET)
	public String product(@PathVariable("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
		throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setId(id);
		model.addAttribute("product-cart", new Product());
		model.addAttribute("product",productsService.search(productSearch).get(0));
		return "front-end/product";
	}
	
	
}
