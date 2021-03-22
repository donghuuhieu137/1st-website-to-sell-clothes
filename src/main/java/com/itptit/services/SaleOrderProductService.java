package com.itptit.services;

import java.io.IOException;
import java.util.List;

import com.itptit.respositories.SaleOrderProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itptit.entities.CartProduct;
import com.itptit.entities.SaleOrderProducts;

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
