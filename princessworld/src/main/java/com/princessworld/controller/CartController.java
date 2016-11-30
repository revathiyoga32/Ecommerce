package com.princessworld.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.princessworld.model.Cart;
import com.princessworld.model.Category;
import com.princessworld.model.Product;
import com.princessworld.model.Supplier;
import com.princessworld.services.CartService;
import com.princessworld.services.DataService;
import com.google.gson.Gson;


@Controller
public class CartController {
	public CartController() {
		System.out.println("inside Cart");
	}
	@Autowired
	DataService dataService;
	
	@Autowired
	CartService cartService;
	
	
	@RequestMapping("/single")
 	public ModelAndView sngl(@ModelAttribute("prod")Product prod,@RequestParam int id)
	{
		prod=dataService.getRowById(id);
		ModelAndView mv=new ModelAndView("single","prdList",prod);
		mv.setViewName("single");
		
		return mv.addObject("command", prod);
	}
	
	@RequestMapping(value="addCart",method=RequestMethod.POST)
	public ModelAndView saveCart(@ModelAttribute("car")Cart car)
	{	
		cartService.insertRow(car);
		return new ModelAndView("cartlist","single",car).addObject("command", new Cart());
	}
	@RequestMapping(value="updateCart",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("car")Cart car)
	{
//	prod=dataService.getRowById(id);
	cartService.updateRow(car);
	return new ModelAndView("redirect:cartlist");
//		return new ModelAndView("list","prod");
	}
	
	@RequestMapping("/cartlist")
	public ModelAndView listCart(ModelMap m)
	{
		List<Cart> cartList=cartService.getList();
		List<Product> productList=dataService.getList();
		m.addAttribute("productList", productList);
		return new ModelAndView("cartlist","cartList", cartList);
	}

}
