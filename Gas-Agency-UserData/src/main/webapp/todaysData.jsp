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
 
  
<%@ include file="NavBar.jsp" %>
  
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
              
               
              
                <tr>
                      <%@ include file="FetchingValuesFromDBForTODAYsDate.jsp" %>
                   
                </tr>
                 
              </tbody>
              <tr class="totalrow"> 
                  <td style="font-weight: 700";>Total</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td class="total"><%=total%></td>
                 <tr>  
            </tfooter>
            </table>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>            
</body>
</html>