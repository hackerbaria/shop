package com.shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.model.Colour;
import com.shop.model.ProductType;
import com.shop.services.ProductTypeServices;



@Controller
@RequestMapping("/show")
public class FormMainController {
	
	
	@Autowired
	private ProductTypeServices productTypeServices;	

    @Autowired
    @Qualifier("colourValidator")
    private Validator validator;
    
    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }
	
	@RequestMapping(method = RequestMethod.GET)
	public String initForm(Model model) {
		ProductType productType = new ProductType();
		model.addAttribute("product", productType);
		initModelList(model);
		return "show";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submitForm(Model model, @Validated Colour colour, BindingResult result) {
		model.addAttribute("colour", colour);
		String returnVal = "successColour";
		if(result.hasErrors()) {
			initModelList(model);
			returnVal = "colour";
		} else {
			model.addAttribute("colour", colour);
		}		
		return returnVal;
	}

	private void initModelList(Model model) {
		List<ProductType> productsList = this.productTypeServices.getAllProductTypes();		
		model.addAttribute("products", productsList);
	}
}
