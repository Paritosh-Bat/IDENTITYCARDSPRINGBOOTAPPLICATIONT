<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            border: 1px solid black;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        
         header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 0.5em;
            margin: 35px;
  border: 1px ;
           }
        
        #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: black;
  color: white;
}

input[type=button] {
  background-color: black;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
    </style>
    <script type="text/javascript">

function approveUser() {
	
	document.fn.action="edit";
	document.fn.submit();
}
function declineUser() 
{
	
	document.fn.action="delete";
	document.fn.submit();
}

function showUser() 
{
	
	document.fn.action="show";
	document.fn.submit();
}

function dashUser() 
{
	
	document.fn.action="admindashboard.jsp";
	document.fn.submit();
}


</script>
</head>
<body>
<header>
<h1>STUDENTS</h1></header>
<form name="fn">
<table  id="customers">
    <tr>
    	<th>Sr No</th>
    	<th>ID</th>
        <th>NAME</th>
        <th>EXPIRY</th>
        <th>ADDRESS</th>
        <th>MOBILE NO.</th>
        <th>AADHAR NO.</th>
        <th>USERNAME</th>
        <th>PASSWORD</th>
    </tr>
   
    <tr>
    	<c:forEach items="${list}" var="stu">
    	<td><input type="radio" name="id" value="${stu.id}"></td>
        <td>${stu.id}</td>
        <td>${stu.sname}</td>
        <td>${stu.expiry}</td>
        <td>${stu.addr}</td>
        <td>${stu.mobno}</td>
        <td>${stu.adhar}</td>
         <td>${stu.username}</td>
          <td>${stu.password}</td>
        
  	 </tr>
   	</c:forEach>
   	 
</table>
<table >
<tr>
<td><input type="button" value="UPDATE" onclick="approveUser()"></td>
<td><input type="button" value="DELETE" onclick="declineUser()"></td>
<td><input type="button" value="SHOW ID" onclick="showUser()"></td>
<td><input type="button" value="DASHBOARD" onclick="dashUser()"></td>

</tr>
</table>

</form>

</body>
</html>
