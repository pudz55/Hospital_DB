<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient registration</title>
</head>
<style>
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
<body>
<form action="patientdata.jsp"method "post">
		<table align="center">
			<tr>
				<h1 style="color:red;font-size:35px;text-align:center;">Patient Registration</h1>
			</tr>
			<tr>
				<td>Patient Name</td>
				<td><input type="text" name="pname"></td>
			<tr>
				<td>Date of birth</td>
				<td><input type="text" name="pdob"></td>
			</tr>
			<tr>
				<td>contact</td>
				<td><input type="text" name="pcon"></td>
			</tr>
				<tr>
				<td>Gender</td>
				<td><input type="text" name="pgen"></td>
			</tr>
				<tr>
				<td>email</td>
				<td><input type="text" name="pmail"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="button" value="register"></td>
			</tr>
		</table>

	</form>
	<form action="prescriptiondata.jsp"method "post">
	<table align="center">
			<tr>
				<h1 style="color:red;font-size:35px;text-align:center;">Existing Patients please check below</h1>
			</tr>
			<tr>
				<td>Enter your patient ID to view your prescription</td>
				<td><input type="text" name="ppid"></td>
			<tr>
				<tr>
				<td></td>
				<td><input type="submit" class="button" value="Enter"></td>
			</tr>
			</table>
	</form>
	<form action="emrdata.jsp"method "post">
	<table align="center">
			
			<tr>
				<td>Enter your patient ID to view your Medical Record</td>
				<td><input type="text" name="peid"></td>
			<tr>
				<tr>
				<td></td>
				<td><input type="submit" class="button" value="Enter"></td>
			</tr>
			</table>
	</form>
	
</body>
</html>