package com.devpro.controller.admin;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.controller.BaseController;
import com.devpro.entities.Product;
import com.devpro.entities.ProductSize;
import com.devpro.model.AjaxResponse;
import com.devpro.respositories.CategoryRepo;
import com.devpro.respositories.ColorRepo;
import com.devpro.respositories.ProductRepo;
import com.devpro.respositories.SizeRepo;
import com.devpro.services.ProductsService;

@Controller
public class AdminProductController extends BaseController{
	
	@Autowired
	private ProductsService productsService;
	
	@Autowired
	private ProductRepo productRepo;
	
	@Autowired
	private CategoryRepo categoryRepo;
	
	@Autowired
	private SizeRepo sizeRepo;
	
	@Autowired
	private ColorRepo colorRepo;
	
	@RequestMapping(value = "/admin/dashboard-products", method = RequestMethod.GET)
	public String product(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("title","Sản phẩm");
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("products", productRepo.findAll());
		return "back-end/dashboard-products";
	}
	
	//////// ADD
	@RequestMapping(value = "/admin/dashboard-products-add", method = RequestMethod.GET)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("size",sizeRepo.findAll());
		model.addAttribute("color",colorRepo.findAll());
		model.addAttribute("product", new Product());
		model.addAttribute("title","Thêm sản phẩm mới");
		return "back-end/dashboard-products-add";
	}
	
	@RequestMapping(value = "/admin/dashboard-products-add", method = RequestMethod.POST)
	public String addProduct(@RequestParam("product_images") MultipartFile[] productImages, @ModelAttribute("product") Product product,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		productsService.save(productImages,product);
		return "redirect:/admin/dashboard-products-add?add=success";
	}
	
	
	/////////////////// D E L E T E
	@RequestMapping(value = { "/admin/product-delete" }, method = RequestMethod.POST, produces = "application/json", consumes="application/json")
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Product product	) {
			Product productInDB = productRepo.getOne(product.getId());
			productInDB.setStatus(false);
			productRepo.save(productInDB);
		return ResponseEntity.ok(new AjaxResponse(200, "Thành công"));
	}
	
	//////// EDIT
	@RequestMapping(value = "/admin/dashboard-products-edit/{id}", method = RequestMethod.GET)
	public String editAccount( @PathVariable ("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		Product product = productRepo.getOne(id);
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("size",sizeRepo.findAll());
		model.addAttribute("color",colorRepo.findAll());
		model.addAttribute("product", product);
		model.addAttribute("title","Sửa thông tin sản phẩm");
		return "back-end/dashboard-products-add";
	}
}
