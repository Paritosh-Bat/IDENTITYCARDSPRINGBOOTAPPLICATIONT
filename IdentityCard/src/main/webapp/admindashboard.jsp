<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }

  #dashboard {
    display: flex;
    height: 100vh;
  }

  #sidebar {
    background-color: #333;
    color: white;
    width: 250px;
    padding: 20px;
  }

  #content {
    flex: 1;
    padding: 20px;
  }

  .nav-link {
    display: block;
    padding: 10px;
    text-decoration: none;
    color: white;
    transition: background-color 0.3s;
  }

  .nav-link:hover {
    background-color: #444;
  }

  .header {
    font-size: 24px;
    margin-bottom: 20px;
  }

  .widget {
    background-color: #f4f4f4;
    border-radius: 5px;
    padding: 20px;
    margin-bottom: 20px;
  }

  .widget-header {
    font-size: 18px;
    margin-bottom: 10px;
  }
</style>
<title>Manager Dashboard</title>
</head>
<body>
  <div id="dashboard">
    <div id="sidebar">
      <div class="header">Dashboard Menu</div>
      <a href="home" class="nav-link">HOME</a>
      <a href="retrieve" class="nav-link">STUDENTS</a>
    
      
    </div>
    <div id="content">
      <div class="header">Welcome to the Manager Dashboard</div>
      <div class="widget">
        <div class="widget-header">Analytics Overview</div>
        <p>Here you can view your team's performance analytics.</p>
      </div>
      <div class="widget">
        <div class="widget-header">Task Management</div>
        <p>Manage tasks and assignments for your team.</p>
      </div>
      <div class="widget">
        <div class="widget-header">Settings</div>
        <p>Customize your dashboard settings and preferences.</p>
      </div>
    </div>
  </div>
</body>
</html>

