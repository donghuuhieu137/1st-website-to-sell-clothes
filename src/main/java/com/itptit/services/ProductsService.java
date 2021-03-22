package com.itptit.services;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itptit.entities.Product;
import com.itptit.entities.ProductImages;
import com.itptit.entities.User;
import com.itptit.model.ProductSearch;
import com.itptit.respositories.ProductRepo;

@Service
public class ProductsService{

	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private ProductRepo productRepo;
	
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if(images == null || images.length <=0) return true;
		if(images.length == 1 && images[0].getOriginalFilename().isEmpty()) return true;
		return false;
	}
	
	/**
	 * Lưu sản phẩm và ảnh sản phẩm.
	 * 
	 * @param productImages
	 * @param product
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	
	// class variable
	final String lexicon = "ABCDEFGHIJKLMNOPQRSTUVWXYZ12345674890";

	final java.util.Random rand = new java.util.Random();

	// consider using a Map<String,Boolean> to say whether the identifier is being used or not 
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
	
	public void  save(MultipartFile[] productImages, Product product) throws IllegalAccessException, IOException{
		
		if(product.getId() != null) { // chỉnh sửa
			
			Product productInDb = productRepo.findById(product.getId()).get();
			if(!isEmptyUploadFile(productImages)) { // nếu admin sửa ảnh sản phẩm
				
				// lấy danh sách ảnh cũ của sản phẩm
				List<ProductImages> oldProductImages = productInDb.getProductImages();
				
				// xoá ảnh cũ trên vật lí(host)
				for(ProductImages _images : oldProductImages) {
					new File("D:\\Code\\Java\\Code Java\\eclipse - workspace\\com.itptit.donghuuhieu\\src\\main\\uploads\\" + _images.getPath()).delete();
				}
				
				// xoá ảnh trên database
				product.removeProductImages();
				
			} else { // ảnh phải giữ nguyên
				product.setProductImages(productInDb.getProductImages());
			}
			
		}
		
		if(!isEmptyUploadFile(productImages)) { // có upload ảnh lên.
			for(MultipartFile productImage : productImages) {
				String rand = randomIdentifier(10);
				// lưu vật lí
				productImage.transferTo(new File("D:\\Code\\Java\\Code Java\\eclipse - workspace\\com.itptit.donghuuhieu\\src\\main\\uploads\\" +rand+".jpg"));
				
				ProductImages _productImages = new ProductImages();
				_productImages.setPath(rand+".jpg");
				_productImages.setTitle(rand);
				product.addProductImages(_productImages);
			}
		}
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) auth.getPrincipal();
		int userId = user.getId();
		if(product.getId() == null)
		{
			String code = randomIdentifier(5);
			product.setCode(code);
			LocalDateTime createdDate = LocalDateTime.now();
			product.setCreatedDate(createdDate);
			product.setCreatedBy(userId);
		}
		else {
			LocalDateTime createdDate = productRepo.getOne(product.getId()).getCreatedDate();
			product.setCreatedDate(createdDate);
			LocalDateTime updatedDate = LocalDateTime.now();
			product.setUpdatedDate(updatedDate);
			product.setUpdatedBy(userId);
		}
		
		productRepo.save(product);
		
	}
	
	/**
	 * Tìm kiếm sản phẩm.
	 * 
	 * @param productSearch
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Product> search(final ProductSearch productSearch) {
//		String jpql = "Select caijcungduoc from Product caijcungduoc";
//		Query query = entityManager.createQuery(jpql, Product.class);

		String sql = "select * from tbl_products where 1=1";

		// tìm kiếm theo category ID.
		if(productSearch != null && productSearch.getCategoryId() != null) {
			sql = sql + " and category_id=" + productSearch.getCategoryId();
		} 

		// tìm kiếm theo ID của sản phẩm.
		if(productSearch != null && productSearch.getId() != null) {
			sql = sql + " and id=" + productSearch.getId();
		}
		
//		// tìm kiếm theo seo của category
//		if(productSearch != null && productSearch.getSeoCategoty() != null) {
//			sql = sql + " and category_id in (select id from tbl_category where seo='"+productSearch.getSeoCategoty()+"')";
//		}
//		
//		// tìm kiếm theo seo của product
//		if(productSearch != null && productSearch.getSeoProduct() != null) {
//			sql = sql + " and seo='"+productSearch.getSeoProduct()+"'";
//		}
		
		Query query = entityManager.createNativeQuery(sql, Product.class);
//		
//		if(productSearch.getCurrentPage() != null && productSearch.getCurrentPage() > 0) {
//			query.setFirstResult((productSearch.getCurrentPage()-1) * ProductSearch.SIZE_ITEMS_ON_PAGE);
//			query.setMaxResults(ProductSearch.SIZE_ITEMS_ON_PAGE);
//		}
		
		return query.getResultList();
	}

}
