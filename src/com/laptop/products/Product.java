package com.laptop.products;

public abstract class Product {

	private String type;

	public Product(String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}

}