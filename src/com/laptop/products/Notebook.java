package com.laptop.products;

public class Notebook extends Product {

	// notebook characteristics
	private String name;
	private String model;
	private double price;
	private String processor;
	private String video;
	private int memory;
	private double storageCapacity;
	private String displayInfo;
	private String opticalDrive;
	private String connections;
	private String interfaces;
	private String operation_system;
	private String weight;
	private String size;
	private int quantity;
	private String image;

	public Notebook(String name, String model, double price, String processor, String video, int memory,
			double storageCapacity, String displayInfo, String opticalDrive, String connections, String interfaces,
			String operation_system, String weight, String size, int quantity, String image) {
		super(1);
		this.name = name;
		this.model = model;
		this.price = price;
		this.processor = processor;
		this.video = video;
		this.memory = memory;
		this.storageCapacity = storageCapacity;
		this.displayInfo = displayInfo;
		this.opticalDrive = opticalDrive;
		this.connections = connections;
		this.interfaces = interfaces;
		this.operation_system = operation_system;
		this.weight = weight;
		this.size = size;
		this.quantity = quantity;
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public String getModel() {
		return model;
	}

	public double getPrice() {
		return price;
	}

	public String getProcessor() {
		return processor;
	}

	public String getVideo() {
		return video;
	}

	public int getMemory() {
		return memory;
	}

	public double getStorageCapacity() {
		return storageCapacity;
	}

	public String getDisplayInfo() {
		return displayInfo;
	}

	public String getOpticalDrive() {
		return opticalDrive;
	}

	public String getConnections() {
		return connections;
	}

	public String getInterfaces() {
		return interfaces;
	}

	public String getOperation_system() {
		return operation_system;
	}

	public String getWeight() {
		return weight;
	}

	public String getSize() {
		return size;
	}

	public int getQuantity() {
		return quantity;
	}

	public String getImage() {
		return image;
	}

	public void setQuantity(int quantity) {
		this.quantity += quantity;

	}
}
