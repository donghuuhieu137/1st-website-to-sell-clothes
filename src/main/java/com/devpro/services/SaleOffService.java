package com.devpro.services;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.SaleOff;
import com.devpro.respositories.SaleOffRepo;

@Service
public class SaleOffService {

	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private SaleOffRepo saleOffRepo;
	
	public void save(SaleOff saleOff) throws IllegalAccessException, IOException{
		
		saleOffRepo.save(saleOff);
		
	}
	
}
