package com.shop.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.ProductType;
import com.shop.model.User;
import com.shop.services.ProductTypeServices;
import com.shop.services.UserServices;

@Controller
public class ShopController {

	@Autowired
	UserServices userServices;
	
	@Autowired
	private ProductTypeServices productTypeServices;

	Map<String, Object> myProductType = new HashMap<String, Object>();
	
	
	
	

	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showLoginForm(Map<String, Object> model) {
		User u = new User();
		model.put("user", u);
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String  processLoginForm(@Validated User user, BindingResult result,
			Model model, HttpSession session) {

		if (result.hasErrors()) {
			return "login";
		}
		
		if (userServices.checkUser(user)) {
			// session.setAttribute("user",
			// customService.findByUsername(c.getUsername()));
			
			/*myProductType.put("productTypeList", this.productTypeServices.getAllProductTypes());
			model.addAttribute("product", myProductType);	*/	
			
			return "redirect:/colour";
		}

		return "login";
	}
	
	

}
