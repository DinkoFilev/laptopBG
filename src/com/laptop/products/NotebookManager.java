package com.laptop.products;

import java.util.concurrent.ConcurrentHashMap;

import com.laptop.DB_ACCESS.AccountDAO;
import com.laptop.DB_ACCESS.NotebookDAO;
import com.laptop.users.Account;

public class NotebookManager {
	static NotebookManager instance = null;
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

	public void addNotebook(String type, String name, String model, double price, String processor, String video,
			int memory, double storageCapacity, String displayInfo, String opticalDrive, String connections,
			String interfaces, String operation_system, String weight, String size, int quantity, String image) {

		Notebook notebook = new Notebook(type, name, model, price, processor, video, memory, storageCapacity,
				displayInfo, opticalDrive, connections, interfaces, operation_system, weight, size, quantity, image);
		allNotebooks.put(model, notebook);
		// any issue with database will remove last user from cache
		NotebookDAO.getInstance().insertNotebook(notebook);
		if (!NotebookDAO.getInstance().insertNotebook(notebook)) {
			allNotebooks.remove(model);

		}
	}

	public Notebook viewNotebook(String model) {
		return allNotebooks.get(model);
	}

	public void setQuantity(String model, int quantity) {
		allNotebooks.get(model).setQuantity(quantity);
		NotebookDAO.getInstance().setQuantity(model, quantity);
	}
}
