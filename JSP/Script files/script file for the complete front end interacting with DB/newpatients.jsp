<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Patients</title>
</head>
<body>
<div class="header">
		<h1>Below are the new Patients</h1>
	</div>
	<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"jxj4536", "Magsafeapple1");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from F21_S003_9_PATIENT1 where patient_ID NOT IN (Select patient_ID from F21_S003_9_APPOINTMENT1)");
	while (rs.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">PATIENT_ID</th>
				<th width="25%">PATIENTNAME</th>
				<th width="25%">BIRTH_DATE</th>
				<th width="25%">CONTACT</th>
				<th width="25%">GENDER</th>
				<th width="25%">EMAIL</th>

			</tr>
			<tr>
				<td width="25%"><%=rs.getString(1)%></td>
				<td width="25%"><%=rs.getString(2)%></td>
				<td width="25%"><%=rs.getString(3)%></td>
				<td width="25%"><%=rs.getString(4)%></td>
				<td width="25%"><%=rs.getString(5)%></td>
				<td width="25%"><%=rs.getString(6)%></td>



			</tr>
		</tbody>
	</table>
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
<form action="appointmentbooked.jsp"method "post">
		<table align="center">
			<tr>
				<th>Appointment Booking page</th>
			</tr>
			<tr>
				<td>APPOINTMENT_ID</td>
				<td><input type="text" name="anum"></td>
			<tr>
				<td>Booking date</td>
				<td><input type="text" name="abook"></td>
			</tr>
			<tr>
				<td>PatientID</td>
				<td><input type="text" name="apatient"></td>
			</tr>
				<tr>
				<td>DoctorID</td>
				<td><input type="text" name="adoc"></td>
			</tr>
				<tr>
				<td>Symptoms</td>
				<td><input type="text" name="asymp"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>
<% 	
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"jxj4536", "Magsafeapple1");
	Statement stt = conn.createStatement();
	ResultSet rss = stt.executeQuery("select d.doctor_id,d.D_name,ds.SPEC_NAME from F21_S003_9_DOCTOR1 d,F21_S003_9_DOC_SPEC1 ds where d.doctor_id=ds.doctor_id");
	while (rss.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">DOCTOR_ID</th>
				<th width="25%">D_NAME</th>
				<th width="25%">SPEC_NAME</th>

			</tr>
			<tr>
				<td width="25%"><%=rss.getString(1)%></td>
				<td width="25%"><%=rss.getString(2)%></td>
				<td width="25%"><%=rss.getString(3)%></td>



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