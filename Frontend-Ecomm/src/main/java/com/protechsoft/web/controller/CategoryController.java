package com.protechsoft.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.protechsoft.entities.Category;

@Controller
public class CategoryController {
	@RequestMapping(method = RequestMethod.POST,value = "/products")
	public String getCategory(@ModelAttribute("category1")Category category) {
			System.out.println(category.getCategoryName());
		
		return "products";
	}
	
	
}
