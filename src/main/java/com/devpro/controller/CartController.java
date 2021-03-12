package com.devpro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.Cart;
import com.devpro.entities.CartProduct;
import com.devpro.entities.Product;
import com.devpro.model.AjaxResponse;
import com.devpro.respositories.ProductRepo;
import com.devpro.respositories.SaleOrderRepo;

@Controller	// -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class CartController extends BaseController{
	
	@Autowired ProductRepo productRepo;
	@Autowired SaleOrderRepo saleOrderRepo;
	
	
	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
	
	return "front-end/cart";
	}
	
	@SuppressWarnings({ })
	@RequestMapping(value = { "/add-to-cart" }, method = RequestMethod.GET)
	public ResponseEntity<AjaxResponse> addToCart(@RequestBody CartProduct cartProduct,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone)
	throws Exception{
		HttpSession session = request.getSession();
		
		Cart cart = null;
		
		if(session.getAttribute("cart") == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		else {
			cart = (Cart) session.getAttribute("cart");
		}
		
		List<CartProduct> productInCart = cart.getCartProduct();
		
		boolean isExist = false;
		
		for (CartProduct product : productInCart) {
			if(product.getId() == cartProduct.getId())
			{
				isExist = true;
				product.setQuantity(product.getQuantity()+cartProduct.getQuantity());
			}
		}
		
		if(isExist == false){
			Product productInDb = productRepo.getOne(cartProduct.getId());
			cartProduct.setName(productInDb.getTitle());
			cartProduct.setPrice(productInDb.getPrice());
			productInCart.add(cartProduct);
		}
		session.setAttribute("productQuantity",productInCart.size());
		
		return ResponseEntity.ok(new AjaxResponse(200,productInCart.size() ));
	}
}
