package com.shop.controller;


import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.model.User;
import com.shop.services.ProductTypeServices;
import com.shop.services.UserServices;

@Controller
public class ShopController {

	@Autowired
	UserServices userServices;
	
	@Autowired
	private ProductTypeServices productTypeServices;	

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
			User a = userServices.findByUsername(user.getUserName());
			
			return "redirect:/show";
		}

		return "login";
	}
	
	

}
