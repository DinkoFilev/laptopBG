package com.laptop.products;

import java.util.concurrent.ConcurrentHashMap;

import com.laptop.DB_ACCESS.AccountDAO;
import com.laptop.DB_ACCESS.NotebookDAO;
import com.laptop.users.Account;

public class NotebookMenager {
	static NotebookMenager instance = null;
	private ConcurrentHashMap<String, Notebook> allNotebooks;

	private NotebookMenager() {
		allNotebooks = new ConcurrentHashMap<>();

		for (Notebook notebook : NotebookDAO.getInstance().getAllNotebook()) {
			allNotebooks.put(notebook.getName(), notebook);
		}
	}

	public synchronized static NotebookMenager getInstance() {
		if (instance == null) {
			instance = new NotebookMenager();
		}
		return instance;
	}

	public void addNotebook(String type, String name, String model, double price, String processor, String video,
			int memory, double storageCapacity, String displayInfo, String opticalDrive, String connections,
			String interfaces, String operation_system, String weight, String size, int quantity, String image) {

		Notebook notebook = new Notebook(type, name, model, price, processor, video, memory, storageCapacity,
				displayInfo, opticalDrive, connections, interfaces, operation_system, weight, size, quantity, image);
		allNotebooks.put(name, notebook);
		NotebookDAO.getInstance().insertNotebook(notebook);
	}

	public Notebook viewNotebook(String name) {
		return allNotebooks.get(name);
	}

	public void setQuantity(String name, int quantity) {
		allNotebooks.get(name).setQuantity(quantity);
		NotebookDAO.getInstance().setQuantity(name, quantity);
	}
}
