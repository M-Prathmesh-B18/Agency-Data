 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.*,java.sql.*,java.time.LocalDate,java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
       <link rel="stylesheet" href="project2tablecss.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body> 
                 <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
       
      <a class="navbar-brand" href="DataEntry.jsp">Gas Agency </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="userdata.jsp">All Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="todaysData.jsp">ToDay's Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="DateWiseData.jsp">Date wise Customer's Data</a>
          </li>
           
          <li class="nav-item">
               <%LocalDate currentDate=LocalDate.now();
       		 DateTimeFormatter formater=DateTimeFormatter.ofPattern("dd/MM/yyyy");
    		 String date =currentDate.format(formater); %>
             <span class="nav-link">Date:<%=date %></span>
          </li>
           
        </ul>
        <form class="d-flex" action="searchbar.jsp">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>