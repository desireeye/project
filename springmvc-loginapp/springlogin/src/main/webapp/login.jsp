<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        margin-bottom: 20px;
    }
    table {
        margin: 0 auto;
    }
    td {
        padding: 10px;
    }
    input[type=text], input[type=password] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type=submit], input[type=reset] {
        padding: 10px 20px;
        margin: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type=submit] {
        background-color: #4CAF50;
        color: white;
    }
    input[type=reset] {
        background-color: #f44336;
        color: white;
    }
    input[type=submit]:hover, input[type=reset]:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>
<div class="login-container">
<h1>User Login</h1>
<form action="LoginServlet" method="post">
<table>
<tr>
    <td>Enter Name: </td>
    <td><input type="text" name="txtName" required></td>
</tr>
<tr>
    <td>Enter Password: </td>
    <td><input type="password" name="txtPwd" required></td>
</tr>
<tr>
    <td colspan="2">
        <input type="submit" value="Login">
        <input type="reset" value="Reset">
    </td>
</tr>
</table>
</form>
</div>
</body>
</html>
