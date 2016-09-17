package com.laptop.users;

import com.laptop.products.Product;
import com.laptop.shop.Shop;

public class Customer extends Account {
	
	Shop shop;
	public Customer(String firstName, String lastName, String email, String username, String password,String address) {
		super(firstName, lastName, email, username, password,address,false);

	}

	void addProduct(Product p){
		shop.addProduct(p);
		
	}
	void removeProduct(Product p){
		shop.removeProduct(p);
	}
	
}
