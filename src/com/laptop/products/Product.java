package com.laptop.products;

public abstract class Product {

	private int type;

	Product(int type){
		this.type = type;
	}
	public int getType() {
		return type;
	}

}