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
<%
	String treat = request.getParameter("streat");
	String pnum = request.getParameter("spnum");

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection cons = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		PreparedStatement sts = cons.prepareStatement("insert into F21_S003_9_SENDS1 (appoint_id,treat_id) values (?,?)");
		sts.setString(1, treat);
		sts.setString(2, pnum);
		int x = sts.executeUpdate();
		if (x != 0) {
			out.print("Patient treated successfully");
		} else {
			out.print("unable to book appointment, please try again....");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>