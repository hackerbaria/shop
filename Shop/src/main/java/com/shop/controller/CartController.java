package com.shop.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dto.CartDTO;
import com.shop.model.Customer;
import com.shop.services.CartService;
import com.shop.services.ProductServices;


@Controller
public class CartController {
	
	
	@Autowired
	ProductServices productService;

	@Autowired
	CartService cartService;
	
	@RequestMapping(value="/cart/show")
	public String showCart(Model model){
		
		return "cart";
	}
	
	@RequestMapping(value="/cart/add/{id}", method=RequestMethod.GET)
	public String addCart(@PathVariable("id") int id,@RequestParam("quantity") int quantity,
			HttpSession session){
		String forward="redirect:/cart/show";
	    cartService.setSession(session);
		cartService.addCart(id, quantity);
		return forward;
	}
	
	@RequestMapping(value="/cart/remove/{id}", method=RequestMethod.GET)
	public @ResponseBody CartDTO removeCart(@PathVariable("id") int id,HttpSession session){
		cartService.setSession(session);
		cartService.removeCart(id);
		return (CartDTO)session.getAttribute("cartContain");
	}
	
	@RequestMapping(value="/cart/update", method=RequestMethod.GET)
	public String updateCart(HttpServletRequest request, HttpSession session){
		cartService.setSession(session);
		cartService.update(request);
		
		return "redirect:/cart/show";
	}
	
	@RequestMapping(value="/cart/movetopayment",method=RequestMethod.GET)
	public String paymentCart(HttpSession session, Model model){
		String url;
		cartService.setSession(session);
		if(cartService.checkEmptyCart()){
			url="redirect:/cart/show";
		}else{
			model.addAttribute("customer", new Customer());
			url="payment";
		}
		return url;
	}
	
	@RequestMapping(value="/cart/order",method=RequestMethod.GET)
	public String orderCart(@ModelAttribute("customer") Customer customer, HttpSession session){
		String url;
		cartService.setSession(session);
		cartService.order(customer);
		url="ordersuccess";
		return url;
	}
}

