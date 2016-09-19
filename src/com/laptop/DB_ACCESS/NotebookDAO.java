package com.laptop.DB_ACCESS;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import com.laptop.products.Notebook;

public class NotebookDAO {
	private static NotebookDAO instance = null;

	private NotebookDAO() {

	}

	public static synchronized NotebookDAO getInstance() {
		if (instance == null) {
			instance = new NotebookDAO();
		}
		return instance;
	}

	public boolean insertNotebook(Notebook notebook) {
		DBManager.getInstance();
		Statement st = null;
		PreparedStatement pst = null;
		ResultSet resultSet = null;
		try {
			st = DBManager.getConnection().createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		

		try {
			pst = DBManager.getConnection().prepareStatement(
					"INSERT INTO notebooks (brand, model, price, processor, video, memory,storage_capacity, display_info, optical_drive,  connections, interfaces,operation_system, weight,  size,  quantity,  image,product_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			pst.setString(1, notebook.getBrand());
			pst.setString(2, notebook.getModel());
			pst.setDouble(3, notebook.getPrice());
			pst.setString(4, notebook.getProcessor());
			pst.setString(5, notebook.getVideo());
			pst.setInt(6, notebook.getMemory());
			pst.setDouble(7, notebook.getStorageCapacity());
			pst.setString(8, notebook.getDisplayInfo());
			pst.setString(9, notebook.getOpticalDrive());
			pst.setString(10, notebook.getConnections());
			pst.setString(11, notebook.getInterfaces());
			pst.setString(12, notebook.getOperation_system());
			pst.setString(13, notebook.getWeight());
			pst.setString(14, notebook.getSize());
			pst.setDouble(15, notebook.getQuantity());
			pst.setString(16, notebook.getImage());
			pst.setInt(17, notebook.getType());
			pst.executeUpdate();
			System.out.println("Noteboook added successfully");
			return true;
		} catch (SQLException e) {
			System.out.println("error cannot add this notebook");
			e.printStackTrace();
			return false;
		}
		

	}

	public void setQuantity(String model, int quantity) {
		// TODO Auto-generated method stub
		DBManager.getInstance();
		Statement st =null;
		PreparedStatement pst = null;
		ResultSet resultSet = null;
		try {
			st = DBManager.getConnection().createStatement();
			resultSet = st.executeQuery("SELECT notebook_id FROM notebooks where model="+model+";");
			int id=resultSet.getInt("notebook_id");
			pst = DBManager.getConnection().prepareStatement("UPDATE notebooks SET quantity = quantity +"+quantity+" WHERE notebook_id="+id+";");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Set<Notebook> getAllNotebook() {
		HashSet<Notebook> notebooks = new HashSet<Notebook>();
		try{
			DBManager.getInstance();
			Statement st = DBManager.getConnection().createStatement();
			ResultSet resultSet = st
					.executeQuery("SELECT brand, model, price,processor, video,memory,storage_capacity ,display_info,optical_drive,connections,interfaces,operation_system,weight,size,quantity,image FROM notebooks;");
			
			while (resultSet.next()) {
					notebooks.add(new Notebook(
							
							resultSet.getString("brand"),
							resultSet.getString("model"),
							resultSet.getDouble("price"),
							resultSet.getString("processor"),
							resultSet.getString("video"),
							resultSet.getInt   ("memory"),
							resultSet.getDouble("storage_capacity"),
							resultSet.getString("display_info"), 
							resultSet.getString("optical_drive"), 
							resultSet.getString("connections"), 
							resultSet.getString("interfaces"), 
							resultSet.getString("operation_system"), 
							resultSet.getString("weight"), 
							resultSet.getString("size"), 
							resultSet.getInt   ("quantity"), 
							resultSet.getString("image")));

				}
		} catch (SQLException e) {
			System.out.println("Cannot create statement");
			e.printStackTrace();
			
		return notebooks;
			}
		return notebooks;
		}
	}
