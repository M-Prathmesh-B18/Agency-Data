<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.*,java.sql.*,java.time.LocalDate,java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
              <%LocalDate currentDate1=LocalDate.now();
       		 DateTimeFormatter formater2=DateTimeFormatter.ofPattern("dd/MM/yyyy");
    		 String date2 =currentDate1.format(formater2); %>
    		  
</body>
</html>