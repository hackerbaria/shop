package com.shop.controller;

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
import com.shop.model.Product;
import com.shop.model.ProductType;
import com.shop.services.ProductServices;
import com.shop.services.ProductTypeServices;



@Controller
@RequestMapping("/show")
public class FormMainController {
	
	
	@Autowired
	private ProductTypeServices productTypeServices;
	
	@Autowired
	private ProductServices productServices;

    @Autowired
    @Qualifier("productTypeValidator")
    private Validator validator;
    
    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }
	
	@RequestMapping(method = RequestMethod.GET)
	public String initForm(Model model) {
		ProductType productType = new ProductType();
		model.addAttribute("productType", productType);
		initModelList(model);
		return "show";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submitForm(Model model, @Validated ProductType productType, BindingResult result) {
		model.addAttribute("productType", productType);
		String returnVal = "showproduct";  
		if(result.hasErrors()) {
			initModelList(model);
			returnVal = "show";
		} else {
			
			List<Product> productList = productServices.getProductsByTypeID(productType.getType());			
			model.addAttribute("listProduct", productList);
			
		}		
		return returnVal;
	}

	private void initModelList(Model model) {
		List<ProductType> productsList = this.productTypeServices.getAllProductTypes();		
		model.addAttribute("products", productsList);
	}
}
