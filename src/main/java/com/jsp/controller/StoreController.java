
package com.jsp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.dao.StoreDao;
import com.jsp.dto.GroceryItems;

@Controller
public class StoreController {
	
	@Autowired
	StoreDao dao;
	
	//APIs TO INSERT STORES OBJECT INTO DB

	@RequestMapping("/itm")
	public ModelAndView getGoceryForm() {
		
		ModelAndView mv =  new ModelAndView();
		mv.addObject("items", new GroceryItems());
		mv.setViewName("create.jsp");
		return mv;
	}
	
	@RequestMapping("/save")
	@ResponseBody
	public String SaveItems(@ModelAttribute GroceryItems items) {
	    String input = items.getName();
	    List<String> namelist = dao.getAllItemNames();

	    for (String s : namelist) {
	        if (s.equalsIgnoreCase(input)) {
	            return "Grocery item with the name " + input + " exists in database....";
	        }
	    }

	    input = input.trim();
	    items.setName(input.substring(0, 1).toUpperCase() + input.substring(1).toLowerCase());
	    dao.saveItem(items);
	    return "Grocery item details added successfully.";
	}

	
	//API's for searching and displaying item details based on ID
	@RequestMapping("/search")
	public ModelAndView getSearchForm() {
		List<String> namelist=dao.getAllItemNames();
		List<String> categorylist=dao.getAllItemCategories();
		ModelAndView mv = new ModelAndView();
		mv.addObject("namelist", namelist);
		mv.addObject("categorylist", categorylist);
		mv.setViewName("search.jsp");
		return mv;
	}
	
	@RequestMapping("/view")
	public ModelAndView displayItem(@ModelAttribute GroceryItems items) {
		
		String name = items.getName();
		String category = items.getCategory();
		List<GroceryItems> list = new ArrayList();
		if (name != null) list.addAll(dao.getItemsByName(name));
	    if (category != null) list.addAll(dao.getItemsByCategory(category));
	    
		if(list != null)
		{
			ModelAndView mv = new ModelAndView();
			mv.addObject("itemslist", list);
			mv.setViewName("display.jsp");
			return mv;
		}
		
		else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("error", "OOPS...... ITEM ID DOESNT EXITS.....");
			mv.setViewName("error.jsp");
			return mv;
		
		}
	}
	
	@RequestMapping("/searchbar")
	public ModelAndView displaysearchItem(@RequestParam("name") String name) {
	    
	    List<String> namelist = dao.getAllItemNames();
	    List<GroceryItems> list = new ArrayList<>();

	    if (name != null) {
	        for (String s : namelist) {
	            if (s != null && s.toLowerCase().contains(name.toLowerCase())) {
	                list.addAll(dao.getItemsByName(s));

	                
	            }
	        }
	        ModelAndView mv = new ModelAndView();
            mv.addObject("itemslist", list);
            mv.setViewName("display.jsp");
            return mv;
	    }

	    // If no match found
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("error", "OOPS...... ITEM NAME DOESN'T EXIST.....");
	    mv.setViewName("error.jsp");
	    return mv;
	}

	
	@RequestMapping("/meow")
	public ModelAndView DeleteItemForm() {
		List<String> namelist = dao.getAllItemNames();
		ModelAndView mv = new ModelAndView();
		mv.addObject("itemslist",namelist);
		mv.setViewName("delete.jsp");
		return mv;
	}
	
	
	@RequestMapping("/remove")
	@ResponseBody
	public String DeleteItem(@RequestParam("name") String name) {
		String result=dao.deleteItem(name);
		return result;
	}
	
	@RequestMapping("/edit")
	public ModelAndView getUpdateForm() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("items",new GroceryItems());
		mv.setViewName("edit.jsp");
		return mv;
	}
	
	@RequestMapping("/directedit")
	public ModelAndView getdirectUpdateForm(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		GroceryItems item = dao.getItemById(id); 
		mv.addObject("items",item);
		mv.setViewName("edit.jsp");
		return mv;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public String UpdateItem(@ModelAttribute GroceryItems items) {
	    String input = items.getName();

		
	    input = input.trim();
	    items.setName(input.substring(0, 1).toUpperCase() + input.substring(1).toLowerCase());
		return dao.updateItems(items.getId(), items.getName(), items.getCategory(), items.getPrice(), items.getQuantity());
	}
	
	@RequestMapping("/purchase")
	public ModelAndView GetPurchaseForm() {
		List<GroceryItems> list = dao.getAllItems();

		ModelAndView mv = new ModelAndView();
		mv.addObject("puritems",new GroceryItems());
		mv.addObject("itemslist",list);
		mv.setViewName("purchase.jsp");
		return mv;
	}
	
	@RequestMapping("/process")
	@ResponseBody
	public ModelAndView PurchaseItem(@ModelAttribute GroceryItems puritems) {
		double g =dao.purchaseItems(puritems.getName(), puritems.getQuantity());
		ModelAndView mv = new ModelAndView();
		mv.addObject("bill",g);
		mv.setViewName("bill.jsp");
		return mv;
	}
	
	@RequestMapping("/getitm")
	public ModelAndView GetAllItems() {
		List<GroceryItems> list = dao.getAllItems();
		ModelAndView mv = new ModelAndView();
		mv.addObject("itemslist",list);
		mv.setViewName("displayall.jsp");
		return mv;
		
	}
	
}
