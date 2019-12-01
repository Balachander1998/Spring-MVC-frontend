package com.protechsoft.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.protechsoft.dao.CategoryDAO;
import com.protechsoft.dao.ProductDAO;
import com.protechsoft.dao.impl.CategoryDAOImpl;
import com.protechsoft.dao.impl.ProductDAOImpl;
import com.protechsoft.entities.Category;
import com.protechsoft.entities.Product;

@Controller
public class ProductController {
	
	private ProductDAO productRepository;
	private CategoryDAO categoryRepository;
	@RequestMapping(path="/index")
	public String viewIndex(){
		
		return "index";
	}
	@RequestMapping(path = "/", method=RequestMethod.GET)
	public String viewProducts(Model model) {
		productRepository= new ProductDAOImpl();
		categoryRepository= new CategoryDAOImpl();
		model.addAttribute("products", productRepository.displayProducts());
		model.addAttribute("categories",categoryRepository.getAllCategories());
		
		return "products";
	}
	@RequestMapping(path="/product",method = RequestMethod.GET)
	public String displayProductDescription(@RequestParam("itemCode") int itemCode,Model model) {
		productRepository= new ProductDAOImpl();
		model.addAttribute("product",productRepository.displayProduct(itemCode));
		
		
		return "product_desc";
	}
	@RequestMapping(path="/addproduct",method=RequestMethod.GET)
	public String addProduct(Model model) {
		Product product = new Product();
		model.addAttribute("addProduct",product);	
		return "AddProduct";
	}
	
	@RequestMapping(path="/addproduct",method=RequestMethod.POST)
	public String  processAddNewProductForm(@ModelAttribute("addProduct") Product product) {
	
	 productRepository= new  ProductDAOImpl();
	 productRepository.addOrUpdateProduct(product);
	 return "redirect:/products";
	 }
	
}
