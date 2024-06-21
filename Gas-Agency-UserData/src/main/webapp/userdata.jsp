<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.*,java.sql.*,java.time.LocalDate,java.time.format.DateTimeFormatter" %>
 <!DOCTYPE html>
<html lang="en">
<head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
       <link rel="stylesheet" href="project2tablecss.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
 
  <%
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/GasAgencyDB","root","mprathamsql1810");
     PreparedStatement ps=conn.prepareStatement("select*from userdata");
     ResultSet rs=ps.executeQuery();
     
     ArrayList<UserPojo> arr=new ArrayList<>();
     while(rs.next())
     {
    	 UserPojo us=new UserPojo();
    	 us.setDate(rs.getString("Date"));
    	 us.setRegisterId(rs.getString("Registration_No"));
    	 us.setUname(rs.getString("Name"));
    	 us.setMobile(rs.getString("Mobile_No"));
    	 us.setPrice(rs.getInt("Price"));
    	 us.setPayment(rs.getString("Payment"));
    	 arr.add(us);
    	 
     }
  
  
  
  %>
<%@ include file="NavBar.jsp" %>
  
       <table class="table">
              <thead>
                <tr>
                  <th scope="col">Date</th>
                  <th scope="col">Registration No</th>
                  <th scope="col">Name</th>
                  <th scope="col">Mobile No</th>
                  <th scope="col">Price</th>
                  <th scope="col">Payment</th>
                   
                </tr>
              </thead>
              <tbody>
              
              <%ListIterator i1=arr.listIterator(); %>
              
            <% while(i1.hasNext()){%>
               <%UserPojo up=(UserPojo) i1.next();%>
              
                <tr>
                  <td><%=up.getDate() %></td>
                  <th scope="row"><%=up.getRegisterId()%></th>
                  <td><%=up.getUname() %></td>
                  <td><%=up.getMobile() %></td>
                  <td><%=up.getPrice() %></td>
                  <td> <%=up.getPayment() %></td>
                   
             <% } %>   
                   
                </tr>
                 
              </tbody>
            </table>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>            
</body>
</html>