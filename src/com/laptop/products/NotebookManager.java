package com.laptop.products;

import java.util.Collections;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

import com.laptop.DB_ACCESS.NotebookDAO;

public class NotebookManager {
	public static NotebookManager instance = null;
	private ConcurrentHashMap<String, Notebook> allNotebooks;

	private NotebookManager() {
		allNotebooks = new ConcurrentHashMap<>();

		for (Notebook notebook : NotebookDAO.getInstance().getAllNotebook()) {
			allNotebooks.put(notebook.getModel(), notebook);
		}
	}

	public synchronized static NotebookManager getInstance() {
		if (instance == null) {
			instance = new NotebookManager();
		}
		return instance;
	}

	public void addNotebook(String brand, String model, double price, String processor, String video, int memory,
			double storageCapacity, String displayInfo, String opticalDrive, String connections, String interfaces,
			String operation_system, String weight, String size, int quantity, String image) {

		Notebook notebook = new Notebook(brand, model, price, processor, video, memory, storageCapacity, displayInfo,
				opticalDrive, connections, interfaces, operation_system, weight, size, quantity, image);
		allNotebooks.put(model, notebook);
		// any issue with database will remove last user from cache

		if (!NotebookDAO.getInstance().insertNotebook(notebook)) {
			allNotebooks.remove(model);

		}
		for (Entry<String, Notebook> str : allNotebooks.entrySet()) {

			System.out.println(str.getValue().getBrand());

		}
	}

	public Notebook viewNotebook(String model) {
		return allNotebooks.get(model);
	}

	public void setQuantity(String model, int quantity) {
		allNotebooks.get(model).setQuantity(quantity);
		NotebookDAO.getInstance().setQuantity(model, quantity);
	}

	public Map<String, Notebook> getAllUsers() {
		return Collections.unmodifiableMap(allNotebooks);
	}
}
