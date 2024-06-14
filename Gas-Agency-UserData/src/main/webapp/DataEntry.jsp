<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <link rel="stylesheet" href="DataInsertcss.css">

</head>
<body>
       
       <table class="table">
              <thead>
                <tr>
                  <th scope="col">Registration No</th>
                  <th scope="col">Name</th>
                  <th scope="col">Mobile No</th>
                  <th scope="col" colspan="2">Payment by Cash / Online</th>
                  <th scope="col">insert</th>
                   
                </tr>
              </thead>
             <tbody> 
              <form action="UserDataEntry" method="post">  
                <tr>
                  <th scope="row"> <input type="text" placeholder="Enter Registration no" name="registration"> </th>
                  <td><input type="text" placeholder="Enter Name" name="username"></td>
                  <td><input type="text" placeholder="Enter Mobile No" name="moblieno"></td>
                  <td> <input type="radio" id="cash1" name="payment1" value="cash1" >
                      <label for="cash1">Cash</label>
                  </td>
                  <td><input type="radio" id="online1" name="payment1" value="online1">
                      <label for="online1">Online</label>
                  </td>
                  <td><input type="submit" name="btn" value="Add"></td>
                   
                </tr>
              </form>   
              </tbody>
            </table>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>                        

</body>
</html>