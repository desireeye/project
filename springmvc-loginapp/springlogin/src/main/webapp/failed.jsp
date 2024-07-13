<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Unsuccessful</title>
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
    .error-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #f44336;
    }
    p {
        color: #666666;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<div class="error-container">
    <h1>Login Unsuccessful</h1>
    <p>Please try again.</p>
    <a href="login.jsp">Try again!!</a>
</div>
</body>
</html>
