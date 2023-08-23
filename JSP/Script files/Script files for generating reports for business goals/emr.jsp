<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/n9.css">
<style>
table, th, td {
	border: 1px solid black;
}

.btn btn-danger {
	margin-top: -13px;
}
</style>
</head>
<body>


	<h1>Medical records of Patients</h1>

	<%
	
	String name=request.getParameter("uname");
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxg5767", "Qwertyuiop55");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from F21_S003_9_EMR");
		while (rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">RECORD_ID</th>
				<th width="25%">MEDICINE_ID</th>
				<th width="25%">M_NAME</th>
				<th width="25%">DISEASE_ID</th>
				<th width="25%">DISEASE_NAME</th>
				<th width="25%">DIAGNOSIS</th>
				<th width="25%">PATIENT_ID</th>
				<th width="25%">APPOINTMENT_ID</th>
				<th width="25%">DOCTOR_ID</th>
				

			</tr>
			<tr>
				<td width="25%"><%=rs.getString(1)%></td>
				<td width="25%"><%=rs.getString(2)%></td>
				<td width="25%"><%=rs.getString(3)%></td>
				<td width="25%"><%=rs.getString(4)%></td>
				<td width="25%"><%=rs.getString(5)%></td>
				<td width="25%"><%=rs.getString(6)%></td>
				<td width="25%"><%=rs.getString(7)%></td>
				<td width="25%"><%=rs.getString(8)%></td>
				<td width="25%"><%=rs.getString(9)%></td>
				
				


			</tr>
		</tbody>
	</table>


	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>