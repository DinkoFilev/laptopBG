package com.laptop.users;

import com.laptop.products.Product;

public class Administrator extends Account {

	public Administrator(String firstName, String lastName, String email, String username, String password,String address) {
		super(firstName, lastName, email, username, password ,address, true);
		

	}

	void insertProduct(Product p, int quantity) {
		p.insertProduct(p, quantity);
	}

	void deleteProduct(Product p, int quantity) {
		p.removeProduct(p, quantity);
	}

}
