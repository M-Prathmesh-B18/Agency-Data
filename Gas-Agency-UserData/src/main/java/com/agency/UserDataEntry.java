package com.agency;

import java.io.IOException;



import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

 
@WebServlet("/UserDataEntry")
public class UserDataEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	
	public void init()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/GasAgencyDB","root","mprathamsql1810");
		    ps=conn.prepareStatement("insert into userdata values(?,?,?,?)");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
       
    

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter pw=response.getWriter();
		
		 Integer registration_no=Integer.parseInt(request.getParameter("registration"));
		 String name=request.getParameter("username");
		 Integer mobile_no=Integer.parseInt(request.getParameter("mobileno"));
		 String payment=request.getParameter("payment1");
		 
//		 Integer registration_no=1123908993;
//		 String name="raj";
//		 Integer mobile_no=1112223312;
//		 String payment="online";
		 
		 
		 
	     try {
			ps.setInt(1,registration_no);
			ps.setString(2, name);
			ps.setInt(3, mobile_no);
			ps.setString(4, payment);
			int x=ps.executeUpdate();
			if(x>0) {
				pw.println("data inserton is done");
			}else {
				pw.println("data is not inserted");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
