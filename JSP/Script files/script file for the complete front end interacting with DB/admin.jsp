<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.header {
	padding: 60px;
	text-align: center;
	background: #1abc9c;
	color: white;
	font-size: 30px;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<div class="header">
		<h1>Welcome admin</h1>
		<p>Please click below to continue</p>
	</div>
	
	<form action="newpatients.jsp"method "post">
		<input type="submit" class="button" value="View new Patients">
	</form>
</body>
</html>