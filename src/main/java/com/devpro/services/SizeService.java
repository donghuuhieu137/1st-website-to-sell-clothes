package com.devpro.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;

import com.devpro.entities.ProductSize;
import com.devpro.model.SizeSearch;

@Service
public class SizeService {

@PersistenceContext EntityManager entityManager;

	
	
	List<ProductSize> search(final SizeSearch sizeSearch){
		
		String sql = "select * from tbl_size where 1=1";
		
		if(sizeSearch != null && sizeSearch.getId() != null) {
			sql = sql + " and id=" + sizeSearch.getId();
		}
		
		Query query = entityManager.createNativeQuery(sql, ProductSize.class);
		
		return query.getResultList();
		
	}
}
