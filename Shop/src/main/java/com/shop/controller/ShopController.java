package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {
	
	
	
	@RequestMapping(value="/")
	public String index(Model model){	
		
		return "login";
	}

}
