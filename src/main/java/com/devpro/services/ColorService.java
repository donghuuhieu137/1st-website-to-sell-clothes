package com.devpro.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Service;

import com.devpro.entities.ProductColor;
import com.devpro.model.ColorSearch;

@Service
public class ColorService {
	
	@PersistenceContext EntityManager entityManager;

	
	
	List<ProductColor> search(final ColorSearch colorSearch){
		
		String sql = "select * from tbl_color where 1=1";
		
		if(colorSearch != null && colorSearch.getId() != null) {
			sql = sql + " and id=" + colorSearch.getId();
		}
		
		Query query = entityManager.createNativeQuery(sql, ProductColor.class);
		
		return query.getResultList();
		
	}
}
