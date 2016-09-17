package com.laptop.shop;

import java.util.ArrayList;

import com.laptop.products.Product;

public class Shop {

	public final static String SHOP_NAME = "NOTEBOOK WORLD";
	public final static String SHOP_ADDR = "Out of space";

	ArrayList<Product> products;

	Shop() {
		products = new ArrayList<>();
	}

	public void addProduct(Product product) {
		if (existsProduct(product) > -1) {
			int index = products.indexOf(product);
		//	products.get(index).setQuantity(products.get(index).getQuantity() + 1);
		} else {
			products.add(product);
		}

	}

	public void removeProduct(Product product) {
		// TODO Auto-generated method stub

	}

	private int existsProduct(Product product) {
		for (int i = 0; i < products.size(); i++) {
		//	if (products.get(i) != null && products.get(i).getProductName().equals(product.getProductName())) {
		//		return i;
		//	}
		}
		return -1;
	}
}
