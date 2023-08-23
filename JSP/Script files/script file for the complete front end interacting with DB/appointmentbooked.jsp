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
<%
	String num = request.getParameter("anum");
	String book = request.getParameter("abook");
	String patient = request.getParameter("apatient");
	String doc = request.getParameter("adoc");
	String symp = request.getParameter("asymp");

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		PreparedStatement st = con.prepareStatement("insert into F21_S003_9_appointment1 (APPOINTMENT_ID,BK_DATE,PATIENT_ID,DOCTOR_ID,SYMPTOMS) values(?,?,?,?,?)");
		st.setString(1, num);
		st.setString(2, book);
		st.setString(3, patient);
		st.setString(4, doc);
		st.setString(5, symp);
		int x = st.executeUpdate();
		if (x != 0) {
			out.print("data stored successfully..... Please visit admin panel");
		} else {
			out.print("unable to book appointment, please try again....");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

<form action="sendpatient.jsp"method "post">
		<input type="submit" class="button" value="sendPatienttoTreatment">
	</form>
</body>
</html>
