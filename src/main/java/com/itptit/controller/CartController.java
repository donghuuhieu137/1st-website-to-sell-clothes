package com.itptit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itptit.entities.Product;
import com.itptit.entities.SaleOrder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itptit.entities.Cart;
import com.itptit.entities.CartProduct;
import com.itptit.model.AjaxResponse;
import com.itptit.respositories.ProductRepo;
//import com.itptit.services.SaleOrderService;
import com.itptit.services.SaleOrderService;

@Controller	// -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class CartController extends BaseController{
	
	@Autowired private ProductRepo productRepo;
	@Autowired private SaleOrderService saleOrderService;
	
	
	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
		return "front-end/cart";
	}
	
	@RequestMapping(value = { "/add-to-cart" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> addToCart(@RequestBody CartProduct cartProduct,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone)
	throws Exception{
		HttpSession session = request.getSession();
		
		System.out.println(cartProduct.getQuantity());
		System.out.println(cartProduct.getName());
		System.out.println(cartProduct.getPrice());
		System.out.println(cartProduct.getSize());
		
		
		Cart cart = null;
		Integer productQuantity = 0;
		Integer totalPrice = 0;
		
		if(session.getAttribute("cart") == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
			session.setAttribute("productQuantity", 0);
			session.setAttribute("totalPriceInCart", 0);
		}
		else {
			cart = (Cart) session.getAttribute("cart");
			productQuantity = (Integer) session.getAttribute("productQuantity");
			System.out.println(productQuantity);
			System.out.println(totalPrice);
			totalPrice = (Integer) session.getAttribute("totalPriceInCart");
		}
		
		List<CartProduct> productInCart = cart.getCartProduct();
		
		boolean isExist = false;

		Product productInDb = productRepo.getOne(cartProduct.getProductId());

		for (CartProduct product : productInCart) {
			if(product.getProductId() == cartProduct.getProductId())
			{
				isExist = true;
				product.setQuantity(product.getQuantity()+cartProduct.getQuantity());
				product.setTotalPrice(product.getQuantity()*cartProduct.getPrice());
				totalPrice = totalPrice + product.getPrice()*cartProduct.getQuantity();
				System.out.println(totalPrice);
			}
		}
		
		if(isExist == false){
			cartProduct.setImgPath(productInDb.getProductImages().get(0).getPath());
			cartProduct.setName(productInDb.getTitle());     
			cartProduct.setPrice(productInDb.getPrice());
			cartProduct.setTotalPrice(cartProduct.getPrice()*cartProduct.getQuantity());
			totalPrice = totalPrice + cartProduct.getPrice()*cartProduct.getQuantity();
			productInCart.add(cartProduct);
		}
		productQuantity = productQuantity + cartProduct.getQuantity();
		session.setAttribute("productQuantity",productQuantity);
		session.setAttribute("totalPriceInCart", totalPrice);
		System.out.println(productQuantity);
		System.out.println(totalPrice);
		return ResponseEntity.ok(new AjaxResponse(200,productQuantity));
	}
	
	@RequestMapping(value = { "/remove-from-cart" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> removeFromCart(@RequestBody CartProduct cartProduct,
				final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		Integer productQuantity = (Integer) httpSession.getAttribute("productQuantity");
		Integer totalPrice = (Integer) httpSession.getAttribute("totalPriceInCart");
		List<CartProduct> listCardProduct = cart.getCartProduct();
		for (CartProduct i : listCardProduct) {
			System.out.println(i.getName());
			System.out.println(i.getProductId());
			System.out.println(cartProduct.getProductId());
			if(i.getProductId()==cartProduct.getProductId()){
				productQuantity -= i.getQuantity();
				totalPrice -= i.getPrice()*i.getQuantity();
				listCardProduct.remove(i);
				break;
			}
		}
		httpSession.setAttribute("productQuantity", productQuantity);
		httpSession.setAttribute("totalPriceInCart", totalPrice);
		return ResponseEntity.ok(new AjaxResponse(200,productQuantity));
	}
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET)
	public String checkOut(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
		model.addAttribute("saleOrder", new SaleOrder());
		return "front-end/checkout";
	}
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.POST)
	public String Order(@ModelAttribute("saleOrder") SaleOrder saleOrder,
			final ModelMap model, final HttpServletRequest request)
	throws Exception {
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		Integer totalPrice = (Integer) httpSession.getAttribute("totalPriceInCart");
		List<CartProduct> listProducts = cart.getCartProduct();
		saleOrderService.save(saleOrder, listProducts, totalPrice);
		return "redirect:checkout?success=true";
	}
	
}
