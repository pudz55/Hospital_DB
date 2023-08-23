<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
		<h1>Below are the new Appointments</h1>
	</div>
	<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"jxj4536", "Magsafeapple1");
	Statement stt = conn.createStatement();
	ResultSet rss = stt.executeQuery("Select * from F21_S003_9_APPOINTMENT1 WHERE appointment_id NOT IN (Select appoint_id from F21_S003_9_SENDS1)");
	while (rss.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">APPOINTMENT_ID</th>
				<th width="25%">BK_DATE</th>
				<th width="25%">PATIENT_ID</th>
				<th width="25%">DOCTOR_ID</th>
				<th width="25%">SYMPTOMS</th>
			</tr>
			<tr>
				<td width="25%"><%=rss.getString(1)%></td>
				<td width="25%"><%=rss.getString(2)%></td>
				<td width="25%"><%=rss.getString(3)%></td>
				<td width="25%"><%=rss.getString(4)%></td>
				<td width="25%"><%=rss.getString(5)%></td>

			</tr>
		</tbody>
	</table>
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
<form action="sends.jsp"method "post">
		<table align="center">
			<tr>
				<th>Treatment Booking page</th>
			</tr>
			<tr>
				<td>Appointment id</td>
				<td><input type="text" name="streat"></td>
			<tr>
				<td>Treatment id</td>
				<td><input type="text" name="spnum"></td>
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
	Connection connn = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"jxj4536", "Magsafeapple1");
	Statement sttt = connn.createStatement();
	ResultSet rsss = sttt.executeQuery("select t.treatment_id,m.m_name,d.disease_name from F21_s003_9_treatment1 t, F21_s003_9_medicine1 m , F21_s003_9_disease1 d , f21_s003_9_decides1 di where t.treatment_id = di.treatment_id and m.medicine_id = di.medicine_id and d.disease_id = di.disease_id");
	while (rsss.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">TREATMENT_ID</th>
				<th width="25%">M_NAME</th>
				<th width="25%">DISEASE_NAME</th>

			</tr>
			<tr>
				<td width="25%"><%=rsss.getString(1)%></td>
				<td width="25%"><%=rsss.getString(2)%></td>
				<td width="25%"><%=rsss.getString(3)%></td>



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
