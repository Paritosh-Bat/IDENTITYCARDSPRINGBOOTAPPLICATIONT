<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }

    .login-container h2 {
      margin-bottom: 20px;
    }

    .login-form input {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    .login-form button {
      background-color: #007bff;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    .login-form button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>REQUIRED MODIFICATIONS</h2>
    <form class="login-form" action="update" method="post">
      <input type="hidden" name="id" readonly="readonly" value="511" >
      <input type="text" name="sname" value="${list.sname}">
      <input type="text" name="expiry" value="${list.expiry}">
      <input type="text" name="addr" value="${list.addr}">
      <input type="number" name="mobno" value="${list.mobno}">
      <input type="number" name="adhar" value="${list.adhar}">
      <input type="text" name="username" value="${list.username}">
      <input type="text" name="password" value="${list.password}">
      <input type="submit" value="UPDATE">
     
    </form>
  </div>
</body>
</html>
    