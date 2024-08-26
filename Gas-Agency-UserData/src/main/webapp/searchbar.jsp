<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,com.pojo.*,java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
       
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body> 
<%@ include file="NavBar.jsp" %>
         
           <%
             String ser=request.getParameter("search");
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/GasAgencyDB","root","mprathamsql1810");
             PreparedStatement ps=conn.prepareStatement("select*from userdata where Date=? or Customer_No=? or Name=? ");
             ps.setString(1,ser);
             ps.setString(2,ser);
             ps.setString(3,ser);
             
             ResultSet rss=ps.executeQuery();
             
             ArrayList <UserPojo> al= new ArrayList<>();
             
             while(rss.next())
             {
            	 UserPojo upp= new UserPojo();
            	 upp.setDate(rss.getString("Date"));
            	 upp.setCustomerNo(rss.getString("Customer_No"));
            	 upp.setUname(rss.getString("Name"));
            	 upp.setMobile(rss.getString("Mobile_No"));
            	 upp.setPrice(rss.getInt("Price"));
            	 upp.setPayment(rss.getString("Payment"));
            	 al.add(upp);
             }
             
            %>
             <table class="table">
              <thead>
                <tr>
                  <th scope="col">Date</th>
                  <th scope="col">Customer No</th>
                  <th scope="col">Name</th>
                  <th scope="col">Mobile No</th>
                  <th scope="col">Price</th>
                  <th scope="col">Payment</th>
                   
                </tr>
              </thead>
              <tbody>
              <% ListIterator i1=al.listIterator();  %>
              
               <% while(i1.hasNext()){%>
            
               <% UserPojo up=(UserPojo) i1.next();
                   
               
               %>
              
                <tr>
                  <td><%=up.getDate() %></td>
                  <th scope="row"><%=up.getCustomerNo()%></th>
                  <td><%=up.getUname() %></td>
                  <td><%=up.getMobile() %></td>
                  <td><%=up.getPrice() %></td>
                  <td> <%=up.getPayment() %></td>
                 <tr> 
                   
             <% } %> 
             </tbody>
             </table>
              <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>                        
            
</body>
</html>