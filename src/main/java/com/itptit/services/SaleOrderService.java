package com.itptit.services;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.itptit.entities.CartProduct;
import com.itptit.entities.SaleOrder;
import com.itptit.entities.User;
import com.itptit.respositories.SaleOrderRepo;
@Service
public class SaleOrderService {

	@Autowired
	private SaleOrderProductService saleOrderProductService;

	@Autowired
	private SaleOrderRepo saleOrderRepo;

	final String lexicon = "ABCDEFGHIJKLMNOPQRSTUVWXYZ12345674890";

	final java.util.Random rand = new java.util.Random();

	final Set<String> identifiers = new HashSet<String>();

	public String randomIdentifier(int num) {
		StringBuilder builder = new StringBuilder();
	    while(builder.toString().length() == 0) {
	        int length = rand.nextInt(num)+5;
	        for(int i = 0; i < length; i++) {
	            builder.append(lexicon.charAt(rand.nextInt(lexicon.length())));
	        }
	        if(identifiers.contains(builder.toString())) {
	            builder = new StringBuilder();
	        }
	    }
	    return builder.toString();
	}

	public void save(SaleOrder saleOrder, List<CartProduct> listProducts, Integer total) throws IllegalAccessException, IOException{
		String code = randomIdentifier(7);
		saleOrder.setCode(code);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) auth.getPrincipal();
		int userId = user.getId();
		saleOrder.setId(userId);
		saleOrder.setTotal(total);
		saleOrderProductService.save(listProducts, userId);
		saleOrderRepo.save(saleOrder);
	}
}
