package com.shop.validator;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.shop.model.ProductType;



public class ProductTypeValidator implements Validator {

		public boolean supports(Class<?> paramClass) {
			return ProductType.class.equals(paramClass);
		}

		public void validate(Object obj, Errors errors) {
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "valid.name");
		}
}