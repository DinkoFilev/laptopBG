package com.laptop.products;

public abstract class Product {

	static int productID = 1;
	private String productName;
	private double productPrice;
	private int quantity;
	
	public void insertProduct(Product product, int quantity) {

	}

	public void removeProduct(Product product, int quanrity) {

	}

	public String getProductName() {
		return productName;
	}

	public Double getProductPrice() {
		return productPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

}
