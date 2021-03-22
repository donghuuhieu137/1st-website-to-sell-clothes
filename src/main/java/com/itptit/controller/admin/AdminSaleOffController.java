package com.itptit.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itptit.controller.BaseController;
import com.itptit.entities.Product;
import com.itptit.entities.SaleOff;
import com.itptit.respositories.SaleOffRepo;
import com.itptit.services.SaleOffService;

@Controller
public class AdminSaleOffController extends BaseController{
	
	@Autowired
	private SaleOffRepo saleOffRepo;
	
	@Autowired
	private SaleOffService saleOffService;
	
	@RequestMapping(value = "/admin/dashboard-sale-off", method = RequestMethod.GET)
	public String product(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("saleoff", saleOffRepo.findAll());
		model.addAttribute("title","Khuyến mãi");
		return "back-end/dashboard-sale-off";
	}
	
	
	/////// ADD
	@RequestMapping(value = "/admin/dashboard-sale-off-add", method = RequestMethod.GET)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("saleOff", new SaleOff());
		model.addAttribute("title","Thêm khuyến mãi mới");
		return "back-end/dashboard-sale-off-add";
	}
	
	@RequestMapping(value = "/admin/dashboard-sale-off-add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("saleOff") SaleOff saleOff,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		saleOffService.save(saleOff);
		return "redirect:/admin/dashboard-sale-off-add?add=success";
	}
	
	
	///// EDIT
	@RequestMapping(value = "/admin/dashboard-sale-off-edit/{id}", method = RequestMethod.GET)
	public String editAccount( @PathVariable("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		SaleOff saleOff = saleOffRepo.getOne(id);
		model.addAttribute("saleOff", saleOff);
		model.addAttribute("title","Sửa thông tin khuyến mãi");
		return "back-end/dashboard-sale-off-add";
	}
}
