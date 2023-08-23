<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Please check your medical record</title>
</head>
<body>
<%
	try {
		String eid=request.getParameter("peid");
			Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		Statement statement = connection.createStatement();
		String sql = "Select M_NAME,DISEASE_ID,DISEASE_NAME,DIAGNOSIS,PATIENT_ID,APPOINTMENT_ID,DOCTOR_ID from F21_S003_9_EMR1 where patient_ID="+eid+"";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">M_NAME</th>
				<th width="25%">DISEASE_ID</th>
				<th width="25%">DISEASE_NAME</th>
				<th width="25%">DIAGNOSIS</th>
				<th width="25%">PATIENT_ID</th>
				<th width="25%">APPOINTMENT_ID</th>
				<th width="25%">DOCTOR_INFO</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("M_NAME") %></td>
		<td><%=rs.getString("DISEASE_ID") %></td>
		<td><%=rs.getString("DISEASE_NAME") %></td>
		<td><%=rs.getString("DIAGNOSIS") %></td>
		<td><%=rs.getString("PATIENT_ID") %></td>
		<td><%=rs.getString("APPOINTMENT_ID") %></td>
		<td><%=rs.getString("DOCTOR_ID") %></td>
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