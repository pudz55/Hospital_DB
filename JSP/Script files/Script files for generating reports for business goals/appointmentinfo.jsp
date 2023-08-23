<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMR data</title>
</head>
<body>

		<h1>list of appointments</h1>
		
<%
	try {
			Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxg5767", "Qwertyuiop55");
		Statement statement = connection.createStatement();
		String sql = "SELECT APPOINTMENT_ID,PATIENTNAME,CONTACT,EMAIL,BIRTH_DATE,SYMPTOMS,GENDER FROM (SELECT APPOINTMENT_ID,PATIENTNAME,CONTACT,EMAIL,BIRTH_DATE,SYMPTOMS,GENDER, ROW_NUMBER() OVER (PARTITION BY GENDER ORDER BY BIRTH_DATE) PO FROM F21_S003_9_patient P, F21_S003_9_Appointment A where P.patient_ID = A.patient_ID) WHERE PO > 0";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">APPOINTMENT_ID</th>
				<th width="25%">PATIENTNAME</th>
				<th width="25%">CONTACT</th>
				<th width="25%">EMAIL</th>
				<th width="25%">BIRTH_DATE</th>
				<th width="25%">SYMPTOMS</th>
				<th width="25%">GENDER</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("APPOINTMENT_ID") %></td>
		<td><%=rs.getString("PATIENTNAME") %></td>
		<td><%=rs.getString("CONTACT") %></td>
		<td><%=rs.getString("EMAIL") %></td>
		<td><%=rs.getString("BIRTH_DATE") %></td>
		<td><%=rs.getString("SYMPTOMS") %></td>
		<td><%=rs.getString("GENDER") %></td>
		
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