package com.itptit.services;

import java.io.IOException;
import java.util.List;

import com.itptit.respositories.ProductRepo;
import com.itptit.respositories.SaleOrderProductRepo;
import com.itptit.respositories.SaleOrderRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itptit.entities.CartProduct;
import com.itptit.entities.Product;
import com.itptit.entities.SaleOrder;
import com.itptit.entities.SaleOrderProducts;
import com.itptit.model.ProductSearch;

@Service
public class SaleOrderProductService {

	@Autowired
	private SaleOrderProductRepo saleOrderProductRepo;
	
	@Autowired
	private SaleOrderRepo saleOrderRepo;

	@Autowired
	private ProductRepo productRepo;
	
	public void save(List<CartProduct> listProducts, SaleOrder saleOrder) throws IllegalAccessException, IOException{
		for (CartProduct product : listProducts) {
			SaleOrderProducts orderProduct = new SaleOrderProducts();
			orderProduct.setSaleOrder(saleOrder);
			orderProduct.setProductId(productRepo.findById(product.getProductId()).get());
			orderProduct.setQuantity(product.getQuantity());
			orderProduct.setColor(product.getColor());
			orderProduct.setSize(product.getSize());
			orderProduct.setTotal(product.getTotalPrice());
			saleOrderProductRepo.save(orderProduct);
		}
	}
}
