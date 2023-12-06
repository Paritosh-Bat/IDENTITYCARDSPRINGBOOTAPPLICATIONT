<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<center><h1>ALL INFORMAITION</h1></center>

<script type="text/javascript">
function addUser() {
	
	document.fn.action="registration.jsp";
	document.fn.submit();
}
function deleteUser() {
	
	document.fn.action="delete";
	document.fn.submit();
}
function editUser() 
{
	alert("Redirecting to edit page");
	document.fn.action="edit";
	document.fn.submit();
}
function bankUser() 
{
	alert("Redirecting to Banking page");
	document.fn.action="operation";
	document.fn.submit();
}

</script>
</head>
<body>
	<form name="fn">


		<table border="1" align="center">
			<th>Sr No</th>
			<th>EId</th>
			<th>Name</th>
			<th>BALANCE</th>
			<th>UserName</th>
			<th>Password</th>
			
			<tr>
				<c:forEach items="${data}" var="user">
					<br>
					<td><input type="radio" name="eid" value="${user.eid}"></td>
					<td>${user.eid}</td>
					<td>${user.name}</td>
					<td>${user.balance}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
					
					<!-- <td><input type="button" value="EDIT" onclick="editUser()"></td>
					<td><input type="button" value="DELETE" onclick="deleteUser()"><td> -->
			</tr>
			</c:forEach>

		</table>

<table border="2" align="center">
<tr>
<td><input type="button" value="EDIT" onclick="editUser()"></td>
<td><input type="button" value="ADD" onclick="addUser()"></td>
<td><input type="button" value="DELETE" onclick="deleteUser()"></td>
<td><input type="button" value="BANKING" onclick="bankUser()"></td>
</tr>
</table>
	</form>
</body>
</html>