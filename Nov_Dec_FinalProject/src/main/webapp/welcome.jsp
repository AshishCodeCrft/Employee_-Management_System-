<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Experience Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://source.unsplash.com/random');
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        
        form {
            border: 1px solid #ccc;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6);
            width: 400px;
            
        }
        
        h1 {
            text-align: center;
            color:white;
            margin-bottom: 30px;
        }
        
        label {
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form action="addexp" method="post">
        <h1>Experience Form</h1>
        <label for="companyname">Company Name</label>
        <input type="text" name="companyname" id="companyname" required>
        <br><br>
        <label for="role">Role</label>
        <input type="text" name="role" id="role" required>
        <br><br>
        <label for="dateofjoining">Joining Date</label>
        <input type="date" name="dateofjoining" id="dateofjoining" required>
        <br><br>
        <label for="lastdate">Last Date</label>
        <input type="date" name="lastdate" id="lastdate" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    
    <form action="datafetch"  method ="get">
    
    <button type="submit">Show Data
    
    </button>
    </form>
</body>
</html>

