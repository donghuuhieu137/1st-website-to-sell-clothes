package com.devpro.services;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.CartProduct;
import com.devpro.entities.SaleOrderProducts;
import com.devpro.respositories.SaleOrderProductRepo;

@Service
public class SaleOrderProductService {

	@Autowired
	private SaleOrderProductRepo saleOrderProductRepo;

	public void save(List<CartProduct> listProducts, Integer userId) throws IllegalAccessException, IOException{
		for (CartProduct product : listProducts) {
			SaleOrderProducts orderProduct = new SaleOrderProducts();
			orderProduct.setQuality(product.getQuality());
			orderProduct.setColor(product.getColor());
			orderProduct.setSize(product.getSize());
			saleOrderProductRepo.save(orderProduct);
		}
	}
}
