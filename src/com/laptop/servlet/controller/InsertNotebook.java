package com.laptop.servlet.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.regex.Matcher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.laptop.products.NotebookManager;

@WebServlet("/InsertNotebook")
@MultipartConfig
public class InsertNotebook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7956775619286439139L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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
		Part notebookImg = request.getPart("image");

		InputStream notebookImgStream = notebookImg.getInputStream();

		File dir = new File("productImages");
		
		if (!dir.exists()) {
			dir.mkdir();
		}
		System.out.println(dir.getAbsolutePath());
		File notebookImgFile = new File(dir, model+"." + notebookImg.getContentType().split("/")[1]);
		Files.copy(notebookImgStream, notebookImgFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
		String image = notebookImgFile.toString();
		image = image.replaceAll("\\\\", "/");
		System.out.println(image);
		
		NotebookManager.getInstance().addNotebook(name, model, price, processor, video, memory, storageCapacity,
				displayInfo, opticalDrive, connections, interfaces, operation_system, weight, size, quantity, image);
		
		
		response.sendRedirect("/LaptopBG/pages/Index.jsp");
		

	}

}
