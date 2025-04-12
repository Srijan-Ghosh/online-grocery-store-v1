package com.jsp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GroceryItems {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String category;
	private double price;
	private int quantity;
	private String image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setId(int id) {
	    this.id = id;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public GroceryItems() {
		super();
	}
	
	
	
	
}
