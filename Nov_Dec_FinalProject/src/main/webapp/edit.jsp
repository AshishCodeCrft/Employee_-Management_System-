<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    color: #333;
     margin-bottom: 30px;
  }
  
  label {
            font-weight: bold;
        }

  input[type="text"],
  input[type="date"] {
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
</style>
</head>

<body>
<div class="container">
<h1>Edit Page</h1>

<d:set var="ob" value="${edit_data }"/>
<form action="/edit/${ob.srno}" method ="post">
<input type="hidden" name=srno value="${ob.srno}"/>
<br><br>
<label for="companyname">Company Name</label>
<input type="text" name=companyname value="${ob.companyname}"/>
<br><br>
<label for="role">Role</label>
<input type="text" name=role value="${ob.role}"/>
<br><br>
 <label for="dateofjoining">Joining Date</label>
<input type="date" name=dateofjoining value="${ob.dateofjoining}"/>
<br><br>
<label for="lastdate">Last Date</label>
<input type="date" name=lastdate value="${ob.lastdate}"/>
<br><br>

<button type="submit" >Update</button>
</form>
</div>

</body>
</html>