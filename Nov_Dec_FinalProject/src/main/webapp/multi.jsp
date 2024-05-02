<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Experience Registration</title>
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
            color: white;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: rgba(0, 0, 0, 0.5);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #333;
            color: white;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function addRow() {
            var table = document.getElementById("experienceTable");
            var newRow = table.insertRow(table.rows.length);

            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);

            cell1.innerHTML = '<input type="text" name="companyname[]">';
            cell2.innerHTML = '<input type="text" name="role[]">';
            cell3.innerHTML = '<input type="date" name="dateofjoining[]">';
            cell4.innerHTML = '<input type="date" name="lastdate[]">';
        }

        function registerAll() {
            var tableData = [];
            var table = document.getElementById("experienceTable");

            for (var i = 1; i < table.rows.length; i++) {
                var row = table.rows[i];
                var rowData = {
                    companyname: row.cells[0].querySelector('input').value,
                    role: row.cells[1].querySelector('input').value,
                    dateofjoining: row.cells[2].querySelector('input').value,
                    lastdate: row.cells[3].querySelector('input').value
                };

                tableData.push(rowData);
            }

            fetch('add1', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(tableData)
            })
            .then(response => {
                if(response.redirected) {
                    window.location.href = response.url;
                } else {
                    return response.json();
                }
            })
            .then(data => {
                window.location.href = '/datafetch';
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    </script>
</head>
<body>
<div class="container">
    <h1>Experience Registration</h1>
    <form action="javascript:void(0);" onsubmit="registerAll()">
        <table id="experienceTable">
            <tr>
                <th>Company Name</th>
                <th>Role</th>
                <th>Joining Date</th>
                <th>Last Date</th>
            </tr>
            <tr>
                <td><input type="text" name="companyname[]"></td>
                <td><input type="text" name="role[]"></td>
                <td><input type="date" name="dateofjoining[]"></td>
                <td><input type="date" name="lastdate[]"></td>
            </tr>
        </table>
        <br>
        <button type="button" onclick="addRow()">Add Row</button>
        <br><br>
        <button type="submit">Register All</button>
    </form>
</div>
</body>
</html>
