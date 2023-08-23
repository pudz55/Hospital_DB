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
<title>thank you</title>

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


	<h1>Registration confirmed</h1>

	<%
	String id = "43";
	String name = request.getParameter("pname");
	String dob = request.getParameter("pdob");
	String conn = request.getParameter("pcon");
	String gen = request.getParameter("pgen");
	String mail = request.getParameter("pmail");

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		PreparedStatement st = con.prepareStatement("insert into F21_S003_9_PATIENT1 (Patient_id,PatientName,Birth_date,Contact,gender,EMAIL) values(?,?,?,?,?,?)");
		st.setString(1, id);
		st.setString(2, name);
		st.setString(3, dob);
		st.setString(4, conn);
		st.setString(5, gen);
		st.setString(6, mail);
		int x = st.executeUpdate();
		if (x != 0) {
			out.print("data stored successfully..... Please visit admin panel");
		} else {
			out.print("unable to register, please try again....");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

</body>
</html>