package com.itptit.controller.admin;

import javax.jws.soap.SOAPBinding.Use;
import javax.persistence.criteria.CriteriaBuilder.In;
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

import com.itptit.entities.Product;
import com.itptit.entities.User;
import com.itptit.respositories.UserRepo;
import com.itptit.services.UserService;

@Controller
public class AdminAccountController {
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/admin/dashboard-accounts", method = RequestMethod.GET)
	public String account(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("accounts", userRepo.findAll());
		model.addAttribute("title","Tài khoản");
		return "back-end/dashboard-accounts";
	}
	
	@RequestMapping(value = "/admin/dashboard-accounts-add", method = RequestMethod.GET)
	public String addAccount(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		model.addAttribute("account", new User());
		model.addAttribute("title","Tạo mới tài khoản");
		return "back-end/dashboard-accounts-add";
	}
	
	@RequestMapping(value = "/admin/dashboard-accounts-add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("account") User account,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		return "redirect:/admin/dashboard-accounts-add?add=success";
	}
	
	@RequestMapping(value = "/admin/dashboard-accounts-edit/{id}", method = RequestMethod.GET)
	public String editAccount( @PathVariable("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
		throws Exception{
		User account = userRepo.getOne(id);
		model.addAttribute("account", account);
		model.addAttribute("title","Sửa thông tin tài khoản");
		return "back-end/dashboard-accounts-add";
	}
	
	
}
