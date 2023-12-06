<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Funny Home Page</title>
    <style>
    /* Reset some default styles */
body, h1, p, img, button {
    margin: 0;
    padding: 0;
}

/* Apply some basic styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
    padding: 20px;
}

header {
    background-color: #333;
    color: white;
    padding: 10px;
    border-radius: 5px 5px 0 0;
}

main {
    background-color: #fff;
    padding: 20px;
    border-radius: 0 0 5px 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

p {
    font-size: 24px;
    margin-bottom: 20px;
}

img {
    width: 150px;
    height: 150px;
    display: block;
    margin: 0 auto;
}

footer {
    background-color: #333;
    color: white;
    padding: 10px;
    border-radius: 0 0 5px 5px;
}

form {
    margin-top: 10px;
}

button {
    background-color: #ff6600;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #ff4500;
}

    </style>
    
    <script type="text/javascript">
function funHome() {
	alert("Hassss le BHAI!");
	document.fn.action="homepage.jsp";
	document.fn.submit();
}
 </script>   
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to  Laugh Page!</h1>
        </header>

        <main>
            <p>Why so serious? Life is a comedy!</p>
            <li>
            <ul>Laugh </ul>
            <ul>Laugh And</ul>
            <ul>Click On Have a Laugh</ul>
           	</li>
        </main>

        <footer>
            <form name="fn">
                <button type="submit" onclick="funHome()">Have a Laugh</button>
            </form>
        </footer>
    </div>
</body>
</html>
