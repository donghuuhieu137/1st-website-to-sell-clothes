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
		
		Cart cart = null;
		Integer productQuality = 0;
		Integer totalPrice = 0;
		
		if(session.getAttribute("cart") == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
			session.setAttribute("productQuality", 0);
			session.setAttribute("totalPriceInCart", 0);
		}
		else {
			cart = (Cart) session.getAttribute("cart");
			productQuality = (Integer) session.getAttribute("productQuality");
			totalPrice = (Integer) session.getAttribute("totalPriceInCart");
		}
		
		List<CartProduct> productInCart = cart.getCartProduct();
		
		boolean isExist = false;

		Product productInDb = productRepo.getOne(cartProduct.getId());

		for (CartProduct product : productInCart) {
			if(product.getId() == cartProduct.getId())
			{
				isExist = true;
				product.setQuality(product.getQuality()+cartProduct.getQuality());
				product.setTotalPrice(product.getQuality()*cartProduct.getPrice());
				totalPrice = totalPrice + product.getPrice()*cartProduct.getQuality();
			}
		}
		
		if(isExist == false){
			cartProduct.setImgPath(productInDb.getProductImages().get(0).getPath());
			cartProduct.setName(productInDb.getTitle());     
			cartProduct.setPrice(productInDb.getPrice());
			cartProduct.setTotalPrice(cartProduct.getPrice()*cartProduct.getQuality());
			totalPrice = totalPrice + cartProduct.getPrice()*cartProduct.getQuality();
			productInCart.add(cartProduct);
		}
		productQuality = productQuality + cartProduct.getQuality();
		session.setAttribute("productQuality",productQuality);
		session.setAttribute("totalPriceInCart", totalPrice);
		return ResponseEntity.ok(new AjaxResponse(200,productQuality));
	}
	
	@RequestMapping(value = { "/remove-from-cart" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> removeFromCart(@RequestBody CartProduct cartProduct,
				final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		Integer productQuality = (Integer) httpSession.getAttribute("productQuality");
		Integer totalPrice = (Integer) httpSession.getAttribute("totalPriceInCart");
		List<CartProduct> listCardProduct = cart.getCartProduct();
		for (CartProduct i : listCardProduct) {
			if(i.getId()==cartProduct.getId()){
				productQuality -= i.getQuality();
				totalPrice -= i.getPrice()*i.getQuality();
				listCardProduct.remove(i);
				break;
			}
		}
		httpSession.setAttribute("productQuality", productQuality);
		httpSession.setAttribute("totalPriceInCart", totalPrice);
		return ResponseEntity.ok(new AjaxResponse(200,productQuality));
	}
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET)
	public String checkOut(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
	throws Exception {
		model.addAttribute("saleOrder", new SaleOrder());
		return "front-end/checkout";
	}
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.POST)
	public String Order(@ModelAttribute SaleOrder saleOrder,
			final ModelMap model, final HttpServletRequest request)
	throws Exception {
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		Integer totalPrice = (Integer) httpSession.getAttribute("totalPrice");
		List<CartProduct> listProducts = cart.getCartProduct();
		saleOrderService.save(saleOrder, listProducts, totalPrice);
		return "front-end/checkout?success=true";
	}
	
}
