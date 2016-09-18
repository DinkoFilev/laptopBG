package com.laptop.servlet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptop.products.NotebookManager;

/**
 * Servlet implementation class InsertNotebook
 */
@WebServlet("/InsertNotebook")
public class InsertNotebook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("brand");
		String model = request.getParameter("model");
		double price = Double.parseDouble(request.getParameter("price"));
		String processor = request.getParameter("processor");
		String video = request.getParameter("video");
		int memory = Integer.parseInt(request.getParameter("memory"));
		double storageCapacity = Double.parseDouble(request.getParameter("storageCapacity"));
		String displayInfo = request.getParameter("displayInfo");
		String opticalDrive = request.getParameter("opticalDrive");
		String connections = request.getParameter("connections");
		String interfaces = request.getParameter("interfaces");
		String operation_system = request.getParameter("operationSystem");
		String weight = request.getParameter("weight");
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String image = request.getParameter("image");
		
		NotebookManager.getInstance().addNotebook(name, model, price, processor, video, memory, storageCapacity, displayInfo, opticalDrive, connections, interfaces, operation_system, weight, size, quantity, image);
		
		
	}

	

}
