<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Fetch</title>
<style>
 body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://source.unsplash.com/random');
            background-size: cover;
            background-position: center;
        }

  .container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    border: 2px solid #ccc;

    
   
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  h1 {
    text-align: center;
    color: white;
  }

  input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  button[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button[type="submit"]:hover {
    background-color: #0056b3;
  }
  
  table {
        color: white; 
    }

    a {
        color: white; 
    }
</style>
</head>

<body>
<div class="container">
<h1>Data Fetch</h1>
    
<table border="2">
<tr>

<th>Sr no </th>
<th>Company name </th>
<th>Role</th>
<th>Joining Date </th>
<th>Last Date</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<d:forEach var="emp" items="${data}">

<tr>
<td> ${emp.srno }</td>
<td> ${emp.companyname }</td>
<td> ${emp.role }</td>
<td> ${emp.dateofjoining }</td>
<td> ${emp.lastdate }</td>

<td> 
<a href="<d:url value = '/${emp.srno }'/>">Edit</a></td>

<td><a href="#" onclick="confirmDelete('${emp.srno}')">Delete</a></td>
</tr>

</d:forEach>
</table>
</div>
<script>
    function confirmDelete(srno) 
    {
        if (confirm("Are you sure you want to delete this record?")) 
        {
        	
            window.location.href = "<d:url value='delete/" + srno + "'/>";
            
        } else 
        {
            
            return false;
        }
    }
</script>

</body>
</html>