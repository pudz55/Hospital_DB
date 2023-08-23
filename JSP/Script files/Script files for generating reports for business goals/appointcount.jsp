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

		<h1> Total appointments booked by each patient </h1>
		
<%
	try {
			Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		Statement statement = connection.createStatement();
		String sql = "Select patientname,emr.disease_name,emr.m_name,(select count(appointment_id) from F21_S003_9_appointment A where P.patient_id = A.patient_id) AS APPOINTMENTS FROM F21_S003_9_PATIENT p RIGHT JOIN F21_S003_9_EMR emr on p.patient_ID=emr.patient_ID";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">PATIENTNAME</th>
				<th width="25%">DISEASE_NAME</th>
				<th width="25%">M_NAME</th>
				<th width="25%">APPOINTMENTS</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("PATIENTNAME") %></td>
		<td><%=rs.getString("DISEASE_NAME") %></td>
		<td><%=rs.getString("M_NAME") %></td>
		<td><%=rs.getString("APPOINTMENTS") %></td>
		
		
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