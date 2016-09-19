package com.laptop.servlet.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptop.products.Notebook;
import com.laptop.products.NotebookManager;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {

	public static void returnNotebookImg(Notebook n, HttpServletResponse response,HttpServletRequest request) throws IOException {

		File notebookImgFile = new File("productImages/" + n.getImage());
		response.setContentLength((int) notebookImgFile.length());
		String contentType = "image/"
				+ notebookImgFile.getName().split("[.]")[notebookImgFile.getName().split("[.]").length - 1];
		System.out.println(contentType);
		response.setContentType(contentType);
		OutputStream out = response.getOutputStream();
	
		Files.copy(notebookImgFile.toPath(), out);
		

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s = request.getParameter("model");
		System.out.println(s);
		Notebook notebook = NotebookManager.getInstance().viewNotebook(s);
		System.out.println(notebook.getModel()+ notebook.getImage());
		returnNotebookImg(notebook, response, request);

	}

}
