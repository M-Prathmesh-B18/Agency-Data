package com.agency;

import java.io.IOException;






import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

 
@WebServlet("/UserDataEntry")
public class UserDataEntry<html> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	
	public void init()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/GasAgencyDB","root","mprathamsql1810");
		    ps=conn.prepareStatement("insert into userdata values(?,?,?,?,?,?)");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
       
    

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
		// TODO Auto-generated method 
	     response.setContentType("text/html");
        
	     PrintWriter pw=response.getWriter();
		 
		
		 String Customer_No=request.getParameter("registration");
		 
       if(Customer_No.length()==10)
      { 
		 String name=request.getParameter("username");
		 String mobile_no=request.getParameter("mobileno");
		 Integer price=Integer.parseInt(request.getParameter("price"));
		 String payment=request.getParameter("payment1");
		 LocalDate currentDate=LocalDate.now();
		 DateTimeFormatter formater=DateTimeFormatter.ofPattern("dd/MM/yyyy");
		 String date =currentDate.format(formater);
		 
//		 Integer registration_no=1123908993;
//		 String name="raj";
//		 Integer mobile_no=1112223312;
//		 String payment="online";
		 
		 
		 
	     try {
	    	ps.setString(1, date);
			ps.setString(2, Customer_No);
			ps.setString(3, name);
			ps.setString(4, mobile_no);
			ps.setInt(5,price);
			ps.setString(6, payment);
			int x=ps.executeUpdate();
			if(x>0) {
				RequestDispatcher rd=request.getRequestDispatcher("DataEntry.jsp");
				rd.forward(request, response);
			}else {
				pw.println("data is not inserted");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
    }else {
    	 pw.println("<html>\r\n"
    	 		+ "<head>\r\n"
    	 		+ "<meta charset=\"ISO-8859-1\">\r\n"
    	 		+ "<title>Insert title here</title>\r\n"
    	 		+ "</head>\r\n"
    	 		+ "<body>\r\n"
    	 		+ "        <script type=\"text/javascript\">alert(\"please Enter the valid information\")</script>\r\n"
    	 		+ "         \r\n"
    	 		+ "</body>\r\n"
    	 		+ "</html>");
    }
}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
