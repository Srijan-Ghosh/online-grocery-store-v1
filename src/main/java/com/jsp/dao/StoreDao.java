package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jsp.dto.GroceryItems;
import com.jsp.dto.GroceryItems;

@Repository
public class StoreDao {
	
	@Autowired
	EntityManager manager;
	
	@Autowired
	EntityTransaction transaction;
	
	//to insert item object into the DB
	public void saveItem(GroceryItems items) {
		transaction.begin();
		manager.persist(items);
		transaction.commit();
	}
	
	//to delete an item object from DB
	public String deleteItem(String name) {
		Query q=manager.createQuery("SELECT g FROM GroceryItems g WHERE g.name = :name", GroceryItems.class).setParameter("name", name);	
		GroceryItems e=(GroceryItems)q.getSingleResult();
		if(e != null) {
				transaction.begin();
				manager.remove(e);
				transaction.commit();
				return "Item with ID : "+name+" is remove successfully....";
			}
			else {
				return "Item with ID : "+name+" doesnt exist...";
			}
		}
	
	public GroceryItems getItemById(int id) {
		GroceryItems e = manager.find(GroceryItems.class, id);
		return e; 
	}
	
	//to find item by name
	public List<GroceryItems> getItemsByName(String name) {
		Query q=manager.createQuery("SELECT g FROM GroceryItems g WHERE g.name = :name", GroceryItems.class).setParameter("name", name);
                return q.getResultList();
		}
	
	//to find item by category
	public List<GroceryItems> getItemsByCategory(String category) {
		Query q=manager.createQuery("SELECT g FROM GroceryItems g WHERE g.category = :category", GroceryItems.class).setParameter("category", category);
	    return q.getResultList();
	                                  
	}
	
	//to update employee details - name and phone number based on ID
		public String updateItems(int id, String newName, String newCategory, double newPrice, int newQuantity) {
			GroceryItems e = manager.find(GroceryItems.class, id);
			
			if(e != null) {
				e.setCategory(newCategory);
				e.setPrice(newPrice);
				e.setQuantity(newQuantity);
				transaction.begin();
				manager.merge(e);
				transaction.commit();
				return "Item details are updated successfully....";
			}
			return "Item with ID : "+id+" doesnt exist...";
		}
	
		//to fetch all employee details
		public List<GroceryItems> getAllItems(){
			
			Query q=manager.createQuery("select e from GroceryItems e");
			return q.getResultList();
		}
		
		public List<String> getAllItemNames() {
		    Query q = manager.createQuery("SELECT DISTINCT e.name FROM GroceryItems e");
		    return q.getResultList();
		}

		public List<String> getAllItemCategories() {
		    Query q = manager.createQuery("SELECT DISTINCT e.category FROM GroceryItems e");
		    return q.getResultList();
		}

		
		public double purchaseItems(String name, int purQuantity) {
			Query q=manager.createQuery("SELECT g FROM GroceryItems g WHERE g.name = :name", GroceryItems.class).setParameter("name", name);
			GroceryItems e=(GroceryItems)q.getSingleResult();
			int oldQuantity =e.getQuantity();
			if(e != null && e.getQuantity()>=purQuantity) {
				
				double price =e.getPrice();
				double total = price*purQuantity;
				int newQuantity=oldQuantity-purQuantity;
				e.setQuantity(newQuantity);
				transaction.begin();
				manager.merge(e);
				transaction.commit();
				return  total;
			}
			return oldQuantity;
		}

	}

