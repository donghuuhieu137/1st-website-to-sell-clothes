package com.itptit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller	// -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.

public class IndexController extends BaseController{
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String index()
		throws Exception {
		
		return "front-end/index";
	}
	
}
