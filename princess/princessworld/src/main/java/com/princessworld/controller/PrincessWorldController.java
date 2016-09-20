package com.princessworld.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.princessworld.model.Product;
import com.princessworld.services.DataService;

@Controller
public class PrincessWorldController {
	  	public PrincessWorldController() {
	 		// super();
	 		// TODO Auto-generated constructor stub
	 		System.out.println("inside princessworld controller");
	 	}
	 
	  	@Autowired
		DataService dataService;
	  	
	 	@RequestMapping("/")
	 	public String homePage() {
	 		return "index1";
	 	}
	 	
	 	@RequestMapping("/form")
		public ModelAndView gotoProduct(@ModelAttribute("prod")Product prod)
		{
			return new ModelAndView("form");
		}
		
		@RequestMapping(value="addProduct",method=RequestMethod.POST)
		public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
		{
			dataService.insertRow(prod);
			
			return new ModelAndView("form").addObject("command", new Product());
		}
		
		@RequestMapping("/hf")
		public ModelAndView listProduct(ModelMap m)
		{
			
			List<Product> productList=dataService.getList();
					m.addAttribute("chkMsg", "hello");
					return new ModelAndView("hf","productList", productList);
		}
		
	 	@RequestMapping("index1")
	 	public String gotoindex1() {
	 		return "index1";
	 	}
	 	@RequestMapping("register")
	 	public String gotoregister() {
	 		return "register";
	 	}
	 	@RequestMapping("contact")
	 	public String gotocontact() {
	 		return "contact";
	 	}
	 	@RequestMapping("about")
	 	public String gotoabout() {
	 		return "about";
	 	}
	 	@RequestMapping("login")
	 	public String gotologin() {
	 		return "login";
	 	}
	 	@RequestMapping("/edit")
		public ModelAndView editProd(@ModelAttribute("prod") Product prod, @RequestParam int id) {
			prod=dataService.getRowById(id);
					ModelAndView mv=new ModelAndView("edit","prdList",prod);
					mv.setViewName("edit");
				return mv.addObject("command", prod);
		}

		@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
		public ModelAndView updateProd(@ModelAttribute("prod") Product prod) {
			// prod=dataService.getRowById(id);
			dataService.updateRow(prod);
			return new ModelAndView("redirect:hf");
			// return new ModelAndView("hf","prod");
		}

		@RequestMapping("/deleteProduct")
		public ModelAndView deleteProd(@RequestParam int id) {
			dataService.deleteRow(id);
			return new ModelAndView("redirect:hf");
		}
	}
