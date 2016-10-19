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

import com.princessworld.model.Supplier;
import com.princessworld.services.SupplierService;

@Controller

public class SupplierController {
	public SupplierController() {
		System.out.println("inside Supplier");
	}
	
	@Autowired
	SupplierService supplierService;
	
	
	
	@RequestMapping("/supform")
	public ModelAndView gotoSupplier(@ModelAttribute("suppl")Supplier suppl)
	{
		return new ModelAndView("supform");
	}
	
	@RequestMapping(value="addSupplier",method=RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("suppl")Supplier suppl)
	{
		supplierService.insertRow(suppl);		
		return new ModelAndView("supform").addObject("command", new Supplier());
	}
	
	@RequestMapping("/suplist")
	public ModelAndView listSupplier(ModelMap n)
	{
		
		List<Supplier> supplierList=supplierService.getList();
		n.addAttribute("chkMsg", "hello");
		return new ModelAndView("suplist","supplierList", supplierList);
	}
	
	@RequestMapping("/supedit")
	public ModelAndView editSuppl(@ModelAttribute("suppl")Supplier suppl,@RequestParam int id)
	{
		suppl=supplierService.getRowById(id);
		ModelAndView mv=new ModelAndView("supedit","supList",suppl);
		mv.setViewName("supedit");
		
		return mv.addObject("command", suppl);
	}
	
	@RequestMapping(value="updateSupplier",method=RequestMethod.POST)
	public ModelAndView updateSuppl(@ModelAttribute("suppl")Supplier suppl)
	{
//		prod=dataService.getRowById(id);
		supplierService.updateRow(suppl);
		return new ModelAndView("redirect:suplist");
//		return new ModelAndView("list","prod");
	}
	
	@RequestMapping("/deleteSupplier")
	public ModelAndView deleteSuppl(@RequestParam int id)
	{
	supplierService.deleteRow(id);
		return new ModelAndView("redirect:suplist");
	}	

}
