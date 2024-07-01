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
         <style type="text/css">
          .total{
                color:green;
                font-weight: 700;
          }
          .totalrow{
                border:1.5px black solid;  
                       
          }
          </style>
</head>
<body>
<%@ include file="GeneratingDate.jsp" %>
      
 <%
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/GasAgencyDB","root","mprathamsql1810");
     PreparedStatement ps=conn.prepareStatement("select*from userdata where Date =?");
     ps.setString(1,date2);
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
 
  
        
              
              <% ListIterator i1=arr.listIterator(); 
                 Integer no;
                 Integer total=0;
              %>
              
            <% while(i1.hasNext()){%>
            
               <% UserPojo up=(UserPojo) i1.next();
                  no=up.getPrice(); 
                
                  total=total+no;             
               %>
              
                <tr>
                  <td><%=up.getDate() %></td>
                  <th scope="row"><%=up.getRegisterId()%></th>
                  <td><%=up.getUname() %></td>
                  <td><%=up.getMobile() %></td>
                  <td><%=up.getPrice() %></td>
                  <td> <%=up.getPayment() %></td>
                 <tr> 
                   
             <% } %>   
                   
                
                 
             
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>            
</body>
</html>