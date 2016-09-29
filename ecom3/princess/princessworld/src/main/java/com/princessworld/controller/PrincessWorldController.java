package com.princessworld.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.princessworld.model.Category;
import com.princessworld.model.Product;
import com.princessworld.model.Supplier;
import com.princessworld.services.CategoryService;
import com.princessworld.services.DataService;
import com.princessworld.services.SupplierService;

@Controller
public class PrincessWorldController {
	  	public PrincessWorldController() {
	 		// super();
	 		// TODO Auto-generated constructor stub
	 		System.out.println("inside princessworld controller");
	 	}
	 
	  	@Autowired
		DataService dataService;
	  	
	  	@Autowired
	  	CategoryService categoryService;
	  	
	  	@Autowired
	  	SupplierService supplierService;
	  	
	  	private static final String UPLOAD_DIRECTORY ="/pic";  
	    
	    @RequestMapping("uploadform")  
	    public ModelAndView uploadForm(){  
	        return new ModelAndView("uploadform");    
	    }  
	  	
	 	@RequestMapping("/")
	 	public String homePage() {
	 		return "index1";
	 	}
	 	
	 	@RequestMapping("/form")
		public ModelAndView gotoProduct(ModelMap m)
		{  
	 		Gson gson=new Gson();
			String js=gson.toJson(dataService.getList());
			m.addAttribute("conv",js);
			System.out.println(js);
			
			List<Category> ob=categoryService.getList();
			List<Supplier> oc=supplierService.getList();
			m.addAttribute("lstsp",oc);
			return new ModelAndView("form","lst",ob).addObject("prod",new Product());
		}
		
		@RequestMapping(value="addProduct",method=RequestMethod.POST)
		public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
		{
			MultipartFile file=prod.getFile();
	        String filename=file.getOriginalFilename();  
	         String src=""; 
	        try{  
	        byte barr[]=file.getBytes();  
	        BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("F:\\princess\\princessworld\\src\\main\\webapp\\resources\\images\\"+filename)));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
	        src="/resources/images/"+filename;
	        System.out.println("selected image:"+src);
//	        req.setAttribute("ïmages", src);
	        }
	        catch(Exception e)
	        {
	        	System.out.println(e);
	        }  
			dataService.insertRow(prod,src);
			
			return new ModelAndView("form","pic",src).addObject("command", new Product());
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
