package com.itptit.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itptit.entities.SaleOrder;
import com.itptit.model.AjaxResponse;
import com.itptit.respositories.SaleOrderProductRepo;
import com.itptit.respositories.SaleOrderRepo;

@Controller
public class AdminOrderController {

	@Autowired
	private SaleOrderRepo saleOrderRepo;
	
	@Autowired
	private SaleOrderProductRepo saleOrderProductRepo;
	
	@RequestMapping(value = {"/admin", "/admin/dashboard-orders"}, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("orders", saleOrderRepo.findAll());
		model.addAttribute("orderproducts", saleOrderProductRepo.findAll());
		return "back-end/dashboard-order";
	}
	
	@RequestMapping(value = {"/admin/order-delete"}, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> deleteOrder(@RequestBody SaleOrder saleOrder)
	throws Exception{
		saleOrderRepo.deleteById(saleOrder.getId());;
		return ResponseEntity.ok(new AjaxResponse(200, "Thành công"));
	}
	
}
