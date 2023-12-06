<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Mad Max is Busy</title>
    <style>
    body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #000;
    color: #fff;
    text-align: center;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    max-width: 400px;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
}

h1 {
    font-size: 36px;
    margin: 0 0 20px;
}

p {
    font-size: 18px;
    margin: 0 0 30px;
}

.loader {
    border: 5px solid #f3f3f3;
    border-top: 5px solid #3498db;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    animation: spin 2s linear infinite;
    margin: 0 auto;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

button {
    padding: 10px 20px;
    font-size: 16px;
    background-color: #3498db;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #2980b9;
}

    </style>
    <script type="text/javascript">
function tryagain() {
	
	document.fn.action="homepage.jsp";
	document.fn.submit();
}
   </script> 
</head>
<body>
    <div class="container">
        <h1>MadMax is Busy</h1>
        <p>Sorry, MadMax is currently on a wild ride. Please wait...</p>
        <div class="loader"></div>
        <form name="fn">
        <button id="refreshButton" type="submit" onclick="tryagain()">Try Again</button>
        </form>
    </div>
   
</body>
</html>
