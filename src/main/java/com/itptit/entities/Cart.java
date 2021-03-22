package com.itptit.entities;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<CartProduct> cartProduct = new ArrayList<CartProduct>();

	public List<CartProduct> getCartProduct() {
		return cartProduct;
	}

	public void setCartProduct(List<CartProduct> cartProduct) {
		this.cartProduct = cartProduct;
	}
}
