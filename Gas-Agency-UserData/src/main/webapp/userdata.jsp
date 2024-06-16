<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.*,java.sql.*" %>
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
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306:GasAgencyDB","root","mprathamsql1810");
     PreparedStatement ps=conn.prepareStatement("select*from userdata");
     ResultSet rs=ps.executeQuery();
     
     ArrayList<UserPojo> arr=new ArrayList<>();
     while(rs.next())
     {
    	 UserPojo us=new UserPojo();
    	 us.setRegisterId(rs.getString("Registration_No"));
    	 us.setUname(rs.getString("Name"));
    	 us.setMobile(rs.getString("Mobile_No"));
    	 us.setPayment(rs.getString("Payment"));
    	 arr.add(us);
    	 
     }
  
  
  
  %>
    
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Today's Data</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
           
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  
       <table class="table">
              <thead>
                <tr>
                  <th scope="col">Registration No</th>
                  <th scope="col">Name</th>
                  <th scope="col">Mobile No</th>
                  <th scope="col">Payment</th>
                   
                </tr>
              </thead>
              <tbody>
              
              <%ListIterator i1=arr.listIterator(); %>
              
            <% while(i1.hasNext()){%>
               <%UserPojo up=(UserPojo) i1.next();%>
              
                <tr>
                  <th scope="row"><%=up.getRegisterId()%></th>
                  <td><%=up.getUname() %></td>
                  <td><%=up.getMobile() %></td>
                  <td> <%=up.getPayment() %></td>
                   
             <% } %>   
                   
                </tr>
                 
              </tbody>
            </table>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>            
</body>
</html>