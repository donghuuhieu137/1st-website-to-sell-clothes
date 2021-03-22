package com.itptit.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itptit.controller.BaseController;
import com.itptit.entities.Category;
import com.itptit.entities.Product;
import com.itptit.model.AjaxResponse;
import com.itptit.respositories.CategoryRepo;
import com.itptit.services.CategoryService;

@Controller
public class AdminCategoryController{
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CategoryRepo categoryRepo;
	
	@RequestMapping(value = "/admin/dashboard-category", method = RequestMethod.GET)
	public String Category(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("title","Danh mục sản phẩm");
		return "back-end/dashboard-category";
	}
	
	//////// ADD
	@RequestMapping(value = "/admin/dashboard-category-add", method = RequestMethod.GET)
	public String addCategory(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("category", new Category());
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("title","Thêm danh mục sản phẩm mới");
		return "back-end/dashboard-category-add";
	}
	
	@RequestMapping(value = "/admin/dashboard-category-add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("categories") Category categories, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		categoryService.save(categories);
		return "redirect:/admin/dashboard-category-add?add=success";
	}
	
	/////////////////// D E L E T E
	@RequestMapping(value = { "/admin/delete" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
											@RequestBody Category category) {
	Category categoryInDB = categoryRepo.getOne(category.getId());
	categoryInDB.setStatus(true);
	categoryRepo.save(categoryInDB);
	return ResponseEntity.ok(new AjaxResponse(200, "Thành công"));
	}
	
	//////// EDIT
	@RequestMapping(value = "/admin/dashboard-category-edit/{id}", method = RequestMethod.GET)
	public String editCategory( @PathVariable("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		Category categorie = categoryRepo.getOne(id);
		model.addAttribute("category", categorie);
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("title","Sửa thông tin danh mục sản phẩm");
		return "back-end/dashboard-category-add";
	}
}
