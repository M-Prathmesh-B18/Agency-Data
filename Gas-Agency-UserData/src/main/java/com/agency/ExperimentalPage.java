package com.agency;

import java.io.IOException;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/ExperimentalPage")
public class ExperimentalPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		LocalDate currentDate=LocalDate.now();
		 DateTimeFormatter formater=DateTimeFormatter.ofPattern("dd/MM/yyyy");
		 String date =currentDate.format(formater);
		 PrintWriter pw=response.getWriter();
		 pw.println(date);
		 String id="12345678920";
		 if(id.length()==10) {
			 pw.println("ok");
		 }else {
			 RequestDispatcher rd=request.getRequestDispatcher("popupFile.html");
		     rd.forward(request, response);
		 }
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
